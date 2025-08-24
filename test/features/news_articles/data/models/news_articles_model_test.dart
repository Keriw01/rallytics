import 'package:flutter_test/flutter_test.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:rallytics/features/news_articles/data/models/news_articles_model.dart';
import 'package:rallytics/features/news_articles/domain/entities/news_articles_entity.dart';

void main() {
  group('NewsArticlesModel', () {
    final tNewsArticleJson = {
      "originalUrl": "https://tenis.pl/tenis/3424/nie-dla-polki",
      "rewrittenContent":
          "Linda Klimovicova pożegnała się z marzeniami o debiucie w głównej drabince US Open 2025.",
      "rewrittenTitle":
          "US Open poza zasięgiem! Kosztowne błędy Polki w decydującym meczu kwalifikacji.",
    };

    final tNewsArticleModel = NewsArticlesModel.fromJson(tNewsArticleJson);

    test('should correctly create a model from JSON', () {
      expect(tNewsArticleModel, isA<NewsArticlesModel>());
      expect(
        tNewsArticleModel.originalUrl,
        "https://tenis.pl/tenis/3424/nie-dla-polki",
      );
      expect(
        tNewsArticleModel.rewrittenContent,
        "Linda Klimovicova pożegnała się z marzeniami o debiucie w głównej drabince US Open 2025.",
      );
      expect(
        tNewsArticleModel.rewrittenTitle,
        "US Open poza zasięgiem! Kosztowne błędy Polki w decydującym meczu kwalifikacji.",
      );
    });

    test('should correctly convert the model to an entity', () {
      final resultEntity = tNewsArticleModel.toEntity();

      expect(resultEntity, isA<NewsArticlesEntity>());
      expect(resultEntity.originalUrl, tNewsArticleModel.originalUrl);
      expect(resultEntity.rewrittenContent, tNewsArticleModel.rewrittenContent);
      expect(resultEntity.rewrittenTitle, tNewsArticleModel.rewrittenTitle);
    });

    test(
      'should correctly create a model from DocumentSnapshot (from fake_cloud_firestore)',
      () async {
        final firestore = FakeFirebaseFirestore();
        final docRef = firestore.collection('news_articles').doc('123');
        await docRef.set(tNewsArticleJson);
        final snapshot = await docRef.get();

        final resultModel = NewsArticlesModel.fromJson(snapshot.data()!);

        expect(resultModel, tNewsArticleModel);
      },
    );
  });
}
