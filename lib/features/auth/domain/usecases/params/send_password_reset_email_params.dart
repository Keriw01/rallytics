import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rallytics/core/usecases/usecase.dart';

part 'send_password_reset_email_params.freezed.dart';

@freezed
class SendPasswordResetEmailParams extends Params
    with _$SendPasswordResetEmailParams {
  const factory SendPasswordResetEmailParams({required String email}) =
      _SendPasswordResetEmailParams;
}
