import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/core/usecases/usecase.dart';

part 'sign_up_with_email_params.freezed.dart';

@freezed
class SignUpParams extends Params with _$SignUpParams {
  const factory SignUpParams({
    required String email,
    required String password,
    required String confirmPassword,
  }) = _SignUpParams;
}
