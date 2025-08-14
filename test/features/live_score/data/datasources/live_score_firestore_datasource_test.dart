import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:rallytics/features/live_score/data/datasources/live_score_firestore_datasource.dart';

void main() {
  late LiveScoreFirestoreDataSourceImpl dataSource;
  late FakeFirebaseFirestore fakeFirestore;

  setUp(() {
    fakeFirestore = FakeFirebaseFirestore();
    dataSource = LiveScoreFirestoreDataSourceImpl(fakeFirestore);
  });

  group('getLiveScoresStream', () {
    test('should listen alternately to the live_matches collection', () async {
      final stream = dataSource.getLiveScoresStream();

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

      await fakeFirestore.collection('live_matches').doc('1').set({
        'name': 'Player1 vs Player2',
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

            return doc.id == '1' && data['name'] == 'Player1 vs Player2';
          }, 'empty snapshot at the beginning'),
        ),
      );

      await fakeFirestore.collection('live_matches').doc('2').set({
        'name': 'Player11 vs Player22',
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
