// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      email: json['email'] as String,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      isActive: json['isActive'] as bool,
      avatar: json['avatar'] == null
          ? null
          : Attachment.fromJson(json['avatar'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'email': instance.email,
      'gender': _$GenderEnumMap[instance.gender]!,
      'dateOfBirth': instance.dateOfBirth.toIso8601String(),
      'isActive': instance.isActive,
      'avatar': instance.avatar,
    };

const _$GenderEnumMap = {
  Gender.male: 'Male',
  Gender.female: 'Female',
};
