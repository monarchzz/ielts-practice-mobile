import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication.freezed.dart';
part 'authentication.g.dart';

@freezed
class Authentication with _$Authentication {
  factory Authentication({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required String phoneNumber,
    required String token,
    required String refreshToken,
  }) = _Authentication;

  factory Authentication.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationFromJson(json);
}
