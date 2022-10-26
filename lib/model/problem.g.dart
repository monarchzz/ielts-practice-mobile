// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'problem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Problem _$$_ProblemFromJson(Map<String, dynamic> json) => _$_Problem(
      type: json['type'] as String,
      title: json['title'] as String,
      status: json['status'] as int,
      traceId: json['traceId'] as String,
      errors: (json['errors'] as List<dynamic>)
          .map((e) => ErrorItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProblemToJson(_$_Problem instance) =>
    <String, dynamic>{
      'type': instance.type,
      'title': instance.title,
      'status': instance.status,
      'traceId': instance.traceId,
      'errors': instance.errors,
    };
