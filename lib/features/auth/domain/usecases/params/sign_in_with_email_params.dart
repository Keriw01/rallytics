import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/core/usecases/usecase.dart';

part 'sign_in_with_email_params.freezed.dart';

@freezed
class SignInParams extends Params with _$SignInParams {
  const factory SignInParams({
    required String email,
    required String password,
  }) = _SignInParams;
}
