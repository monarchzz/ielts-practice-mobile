// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Attachment _$$_AttachmentFromJson(Map<String, dynamic> json) =>
    _$_Attachment(
      id: json['id'] as String,
      fileName: json['fileName'] as String,
      length: json['length'] as String,
      contentType: json['contentType'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$$_AttachmentToJson(_$_Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fileName': instance.fileName,
      'length': instance.length,
      'contentType': instance.contentType,
      'url': instance.url,
    };
