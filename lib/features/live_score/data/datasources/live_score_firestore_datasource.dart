import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

abstract class LiveScoreDataSource {
  Stream<QuerySnapshot> getLiveScoresStream();
}

@LazySingleton(as: LiveScoreDataSource)
class LiveScoreFirestoreDataSourceImpl implements LiveScoreDataSource {
  final FirebaseFirestore _firestore;

  LiveScoreFirestoreDataSourceImpl(this._firestore);

  @override
  Stream<QuerySnapshot> getLiveScoresStream() {
    return _firestore.collection('live_matches').snapshots();
  }
}
