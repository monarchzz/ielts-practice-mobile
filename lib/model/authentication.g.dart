// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Authentication _$$_AuthenticationFromJson(Map<String, dynamic> json) =>
    _$_Authentication(
      id: json['id'] as String,
      email: json['email'] as String,
      isActive: json['isActive'] as bool,
      token: json['token'] as String,
      refreshToken: json['refreshToken'] as String,
    );

Map<String, dynamic> _$$_AuthenticationToJson(_$_Authentication instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'isActive': instance.isActive,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
    };
