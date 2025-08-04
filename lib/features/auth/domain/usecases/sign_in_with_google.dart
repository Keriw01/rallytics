import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';

@lazySingleton
class SignInWithGoogleUseCase implements UseCase<void, NoParams> {
  final AuthRepository _repository;

  SignInWithGoogleUseCase(this._repository);

  @override
  Future<void> call(NoParams params) {
    return _repository.signInWithGoogle();
  }
}
