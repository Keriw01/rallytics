// Reprezentuje pojedynczą, konkretną akcję biznesową (np. SignInWithEmailUseCase).
// Hermetyzuje logikę i jest wywoływany przez BLoC. Dobry dla skomplikowanych operacji.
// Zależy od interfejsu repozytorium, nie od implementacji.

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';

part 'sign_in_with_email.freezed.dart';

@freezed
class SignInParams extends Params with _$SignInParams {
  const factory SignInParams({
    required String email,
    required String password,
  }) = _SignInParams;
}

@lazySingleton
class SignInWithEmailUseCase implements UseCase<void, SignInParams> {
  final AuthRepository _repository;

  SignInWithEmailUseCase(this._repository);

  @override
  Future<void> call(SignInParams params) {
    if (params.email.isEmpty || params.password.isEmpty) {
      throw ValidationException(code: ValidationErrorCode.emptyFields);
    }

    if (!kEmailRegex.hasMatch(params.email)) {
      throw ValidationException(code: ValidationErrorCode.invalidEmail);
    }

    return _repository.signInWithEmail(params.email, params.password);
  }
}
