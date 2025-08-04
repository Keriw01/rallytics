import 'package:injectable/injectable.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/domain/usecases/params/sign_up_with_email_params.dart';

@lazySingleton
class SignUpWithEmailUseCase implements UseCase<void, SignUpParams> {
  final AuthRepository _repository;

  SignUpWithEmailUseCase(this._repository);

  @override
  Future<void> call(SignUpParams params) {
    if (params.email.isEmpty ||
        params.password.isEmpty ||
        params.confirmPassword.isEmpty) {
      throw ValidationException(code: ValidationErrorCode.emptyFields);
    }

    if (!kEmailRegex.hasMatch(params.email)) {
      throw ValidationException(code: ValidationErrorCode.invalidEmail);
    }

    if (!kPasswordRegex.hasMatch(params.password) &&
        !kPasswordRegex.hasMatch(params.confirmPassword)) {
      throw ValidationException(code: ValidationErrorCode.weakPassword);
    }

    if (params.password != params.confirmPassword) {
      throw ValidationException(code: ValidationErrorCode.passwordsDoNotMatch);
    }

    return _repository.signUpWithEmail(params.email, params.password);
  }
}
