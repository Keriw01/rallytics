// Reprezentuje pojedynczą, konkretną akcję biznesową (np. SignInWithEmailUseCase).
// Hermetyzuje logikę i jest wywoływany przez BLoC. Dobry dla skomplikowanych operacji.
// Zależy od interfejsu repozytorium, nie od implementacji.
import 'package:injectable/injectable.dart';
import 'package:rallytics/core/constants/validation_constants.dart';
import 'package:rallytics/core/error/error_codes.dart';
import 'package:rallytics/core/error/exceptions.dart';
import 'package:rallytics/core/usecases/usecase.dart';
import 'package:rallytics/features/auth/domain/repositories/auth_repository.dart';
import 'package:rallytics/features/auth/domain/usecases/params/sign_in_with_email_params.dart';

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
