import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rallytics/features/news_articles/data/datasources/news_articles_firestore_datasource.dart';

void main() {
  late NewsArticlesFirestoreDataSourceImpl dataSource;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    dataSource = NewsArticlesFirestoreDataSourceImpl(fakeFirestore);
  });

  group('getNewsArticlesStream', () {
    test('should listen alternately to the news_articles collection', () async {
      final stream = dataSource.getNewsArticlesStream();

      expectLater(
        stream,
        emits(
          predicate((snapshot) {
            if (snapshot is! QuerySnapshot || snapshot.docs.isEmpty) {
              return true;
            }
            return false;
          }, 'empty snapshot at the beginning'),
        ),
      );

      await fakeFirestore.collection('news_articles').doc('1').set({
        'rewrittenContent': 'In final WTA...',
      });

      expectLater(
        stream,
        emits(
          predicate((snapshot) {
            if (snapshot is! QuerySnapshot) return false;

            final docs = snapshot.docs;
            if (docs.length != 1) return false;

            final doc = docs.first;

            final objectData = doc.data();

            if (objectData == null) return false;

            if (objectData is! Map<String, dynamic>) return false;

            final data = objectData;

            return doc.id == '1' &&
                data['rewrittenContent'] == 'In final WTA...';
          }, 'empty snapshot at the beginning'),
        ),
      );

      await fakeFirestore.collection('news_articles').doc('2').set({
        'rewrittenContent': 'Linda Klimovicova ended...',
      });

      expectLater(
        stream,
        emits(
          predicate((snapshot) {
            if (snapshot is! QuerySnapshot) return false;
            final docs = snapshot.docs;
            return docs.length == 2;
          }, 'snapshot with two documents'),
        ),
      );
    });
  });
}
