// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exam.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Exam _$$_ExamFromJson(Map<String, dynamic> json) => _$_Exam(
      id: json['id'] as String,
      name: json['name'] as String,
      status: $enumDecode(_$ExamStatusEnumMap, json['status']),
      managerId: json['managerId'] as String,
    );

Map<String, dynamic> _$$_ExamToJson(_$_Exam instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'status': _$ExamStatusEnumMap[instance.status]!,
      'managerId': instance.managerId,
    };

const _$ExamStatusEnumMap = {
  ExamStatus.pending: 'Pending',
  ExamStatus.approved: 'Approved',
  ExamStatus.cancelled: 'Cancelled',
};
