import 'package:injectable/injectable.dart';

import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/entities/user_entity.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class GetAuthStateChangesUseCase
    implements StreamUseCase<UserEntity?, NoParams> {
  final AuthRepository _repository;

  GetAuthStateChangesUseCase(this._repository);

  @override
  Stream<UserEntity?> call(NoParams params) {
    return _repository.authStateChanges;
  }
}
