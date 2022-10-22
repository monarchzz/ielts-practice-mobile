import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ielts_practice_mobile/model/enum/gender.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required String id,
    required String firstName,
    required String lastName,
    required String email,
    required Gender gender,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
