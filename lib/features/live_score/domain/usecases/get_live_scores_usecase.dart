import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/domain/repositories/live_score_repository.dart';

@lazySingleton
class GetLiveScoresUseCase
    implements StreamUseCase<List<LiveMatchEntity>, NoParams> {
  final LiveScoreRepository _repository;

  GetLiveScoresUseCase(this._repository);

  @override
  Stream<List<LiveMatchEntity>> call(NoParams params) {
    return _repository.getLiveScores();
  }
}
