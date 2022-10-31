// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_programme_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudyProgrammeSection _$$_StudyProgrammeSectionFromJson(
        Map<String, dynamic> json) =>
    _$_StudyProgrammeSection(
      id: json['id'] as String,
      title: json['title'] as String,
      ordinal: json['ordinal'] as int,
      studyProgrammeId: json['studyProgrammeId'] as String,
    );

Map<String, dynamic> _$$_StudyProgrammeSectionToJson(
        _$_StudyProgrammeSection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'ordinal': instance.ordinal,
      'studyProgrammeId': instance.studyProgrammeId,
    };
