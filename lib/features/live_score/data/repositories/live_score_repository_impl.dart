import 'package:injectable/injectable.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/domain/repositories/live_score_repository.dart';
import 'package:rallytics/features/live_score/data/datasources/live_score_firestore_datasource.dart';
import 'package:rallytics/features/live_score/data/models/live_match_model.dart';

@LazySingleton(as: LiveScoreRepository)
class LiveScoreRepositoryImpl implements LiveScoreRepository {
  final LiveScoreDataSource _dataSource;

  LiveScoreRepositoryImpl(this._dataSource);

  @override
  Stream<List<LiveMatchEntity>> getLiveScores() {
    return _dataSource.getLiveScoresStream().map((querySnapshot) {
      return querySnapshot.docs
          .map((doc) => LiveMatchModel.fromFirestore(doc).toEntity())
          .toList();
    });
  }
}
