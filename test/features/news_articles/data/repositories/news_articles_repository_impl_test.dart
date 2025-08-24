import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:rallytics/features/news_articles/data/datasources/news_articles_firestore_datasource.dart';
import 'package:rallytics/features/news_articles/data/models/news_articles_model.dart';
import 'package:rallytics/features/news_articles/data/repositories/news_articles_repository_impl.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';

import 'news_articles_repository_impl_test.mocks.dart';

@GenerateMocks([NewsArticlesDataSource, QuerySnapshot, QueryDocumentSnapshot])
void main() {
  late NewsArticlesRepositoryImpl repository;
  late MockNewsArticlesDataSource mockDataSource;

  setUp(() {
    mockDataSource = MockNewsArticlesDataSource();
    repository = NewsArticlesRepositoryImpl(mockDataSource);
  });

  final tNewsArticles = {
    "originalUrl": "https://tenis.pl/tenis/3424/nie-dla-polki",
    "rewrittenContent":
        "Linda Klimovicova pożegnała się z marzeniami o debiucie w głównej drabince US Open 2025.",
    "rewrittenTitle":
        "US Open poza zasięgiem! Kosztowne błędy Polki w decydującym meczu kwalifikacji.",
  };

  final tNewsArticlesModel = NewsArticlesModel.fromJson(tNewsArticles);

  final tNewsArticlesEntity = tNewsArticlesModel.toEntity();

  final mockDocumentSnapshot = MockQueryDocumentSnapshot<Object?>();

  when(
    mockDocumentSnapshot.data(),
  ).thenReturn(tNewsArticles as Map<String, dynamic>);

  final mockQuerySnapshot = MockQuerySnapshot<Object?>();

  when(mockQuerySnapshot.docs).thenReturn([mockDocumentSnapshot]);

  group('getNewsArticles', () {
    test(
      'should return a valid List<NewsArticlesEntity> stream when the DataSource provides data',
      () {
        when(
          mockDataSource.getNewsArticlesStream(),
        ).thenAnswer((_) => Stream.value(mockQuerySnapshot));

        final resultStream = repository.getNewsArticles();

        expect(resultStream, emits([tNewsArticlesEntity]));
      },
    );

    test(
      'should return an empty stream when the DataSource provides empty data',
      () {
        final mockEmptyQuerySnapshot = MockQuerySnapshot<Object?>();
        when(mockEmptyQuerySnapshot.docs).thenReturn([]);

        when(
          mockDataSource.getNewsArticlesStream(),
        ).thenAnswer((_) => Stream.value(mockEmptyQuerySnapshot));

        final resultStream = repository.getNewsArticles();

        expect(resultStream, emits(<NewsArticlesEntity>[]));
      },
    );

    test(
      'should pass the error on when the stream from the DataSource throws an error',
      () {
        final testException = Exception('Firestore connection error');
        when(
          mockDataSource.getNewsArticlesStream(),
        ).thenAnswer((_) => Stream.error(testException));

        final resultStream = repository.getNewsArticles();

        expect(resultStream, emitsError(testException));
      },
    );
  });
}
