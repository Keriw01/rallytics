import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.g.dart';
part 'user_entity.freezed.dart';

// Definiuje CZYSTY, niezależny od technologii model użytkownika.
// Zawiera tylko te dane, które są niezbędne dla logiki biznesowej aplikacji.
// Nie ma tu żadnych importów z Firebase ani Fluttera.
@freezed
class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String uid,
    required String email,
    String? displayName,
    String? photoURL,
    required bool isEmailVerified,
  }) = _UserEntity;

  factory UserEntity.fromJson(Map<String, dynamic> json) =>
      _$UserEntityFromJson(json);
}
