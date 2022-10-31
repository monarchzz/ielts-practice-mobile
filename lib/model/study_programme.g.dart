// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'study_programme.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_StudyProgramme _$$_StudyProgrammeFromJson(Map<String, dynamic> json) =>
    _$_StudyProgramme(
      id: json['id'] as String,
      name: json['name'] as String,
      type: $enumDecode(_$StudyProgrammeTypeEnumMap, json['type']),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$_StudyProgrammeToJson(_$_StudyProgramme instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': _$StudyProgrammeTypeEnumMap[instance.type]!,
      'description': instance.description,
    };

const _$StudyProgrammeTypeEnumMap = {
  StudyProgrammeType.target4To6: 'Target4To6',
  StudyProgrammeType.target6To8: 'Target6To8',
  StudyProgrammeType.target8To9: 'Target8To9',
  StudyProgrammeType.listeningSection: 'ListeningSection',
  StudyProgrammeType.speakingSection: 'SpeakingSection',
};
