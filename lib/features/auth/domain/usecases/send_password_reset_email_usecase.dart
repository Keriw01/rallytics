import 'package:injectable/injectable.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/domain/usecases/params/send_password_reset_email_params.dart';

@lazySingleton
class SendPasswordResetEmailUseCase
    implements UseCase<void, SendPasswordResetEmailParams> {
  final AuthRepository _repository;
  SendPasswordResetEmailUseCase(this._repository);

  @override
  Future<void> call(SendPasswordResetEmailParams params) {
    return _repository.sendPasswordResetEmail(params.email);
  }
}
