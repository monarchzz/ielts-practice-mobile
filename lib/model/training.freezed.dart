// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'training.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Training _$TrainingFromJson(Map<String, dynamic> json) {
  return _Training.fromJson(json);
}

/// @nodoc
mixin _$Training {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  TrainingSession get trainingSession => throw _privateConstructorUsedError;
  TrainingType get type => throw _privateConstructorUsedError;
  TrainingLevel get level => throw _privateConstructorUsedError;
  TrainingStatus get status => throw _privateConstructorUsedError;
  bool get forExamOnly => throw _privateConstructorUsedError;
  Attachment? get audio => throw _privateConstructorUsedError;
  Attachment? get image => throw _privateConstructorUsedError;
  String get managerId => throw _privateConstructorUsedError;
  String? get examId => throw _privateConstructorUsedError;
  String? get studyProgrammeSectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TrainingCopyWith<Training> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TrainingCopyWith<$Res> {
  factory $TrainingCopyWith(Training value, $Res Function(Training) then) =
      _$TrainingCopyWithImpl<$Res, Training>;
  @useResult
  $Res call(
      {String id,
      String name,
      TrainingSession trainingSession,
      TrainingType type,
      TrainingLevel level,
      TrainingStatus status,
      bool forExamOnly,
      Attachment? audio,
      Attachment? image,
      String managerId,
      String? examId,
      String? studyProgrammeSectionId});

  $AttachmentCopyWith<$Res>? get audio;
  $AttachmentCopyWith<$Res>? get image;
}

/// @nodoc
class _$TrainingCopyWithImpl<$Res, $Val extends Training>
    implements $TrainingCopyWith<$Res> {
  _$TrainingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? trainingSession = null,
    Object? type = null,
    Object? level = null,
    Object? status = null,
    Object? forExamOnly = null,
    Object? audio = freezed,
    Object? image = freezed,
    Object? managerId = null,
    Object? examId = freezed,
    Object? studyProgrammeSectionId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trainingSession: null == trainingSession
          ? _value.trainingSession
          : trainingSession // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrainingType,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as TrainingLevel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrainingStatus,
      forExamOnly: null == forExamOnly
          ? _value.forExamOnly
          : forExamOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      studyProgrammeSectionId: freezed == studyProgrammeSectionId
          ? _value.studyProgrammeSectionId
          : studyProgrammeSectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get audio {
    if (_value.audio == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.audio!, (value) {
      return _then(_value.copyWith(audio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AttachmentCopyWith<$Res>? get image {
    if (_value.image == null) {
      return null;
    }

    return $AttachmentCopyWith<$Res>(_value.image!, (value) {
      return _then(_value.copyWith(image: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TrainingCopyWith<$Res> implements $TrainingCopyWith<$Res> {
  factory _$$_TrainingCopyWith(
          _$_Training value, $Res Function(_$_Training) then) =
      __$$_TrainingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      TrainingSession trainingSession,
      TrainingType type,
      TrainingLevel level,
      TrainingStatus status,
      bool forExamOnly,
      Attachment? audio,
      Attachment? image,
      String managerId,
      String? examId,
      String? studyProgrammeSectionId});

  @override
  $AttachmentCopyWith<$Res>? get audio;
  @override
  $AttachmentCopyWith<$Res>? get image;
}

/// @nodoc
class __$$_TrainingCopyWithImpl<$Res>
    extends _$TrainingCopyWithImpl<$Res, _$_Training>
    implements _$$_TrainingCopyWith<$Res> {
  __$$_TrainingCopyWithImpl(
      _$_Training _value, $Res Function(_$_Training) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? trainingSession = null,
    Object? type = null,
    Object? level = null,
    Object? status = null,
    Object? forExamOnly = null,
    Object? audio = freezed,
    Object? image = freezed,
    Object? managerId = null,
    Object? examId = freezed,
    Object? studyProgrammeSectionId = freezed,
  }) {
    return _then(_$_Training(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      trainingSession: null == trainingSession
          ? _value.trainingSession
          : trainingSession // ignore: cast_nullable_to_non_nullable
              as TrainingSession,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TrainingType,
      level: null == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as TrainingLevel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as TrainingStatus,
      forExamOnly: null == forExamOnly
          ? _value.forExamOnly
          : forExamOnly // ignore: cast_nullable_to_non_nullable
              as bool,
      audio: freezed == audio
          ? _value.audio
          : audio // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as Attachment?,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      studyProgrammeSectionId: freezed == studyProgrammeSectionId
          ? _value.studyProgrammeSectionId
          : studyProgrammeSectionId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Training implements _Training {
  _$_Training(
      {required this.id,
      required this.name,
      required this.trainingSession,
      required this.type,
      required this.level,
      required this.status,
      required this.forExamOnly,
      this.audio,
      this.image,
      required this.managerId,
      this.examId,
      this.studyProgrammeSectionId});

  factory _$_Training.fromJson(Map<String, dynamic> json) =>
      _$$_TrainingFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final TrainingSession trainingSession;
  @override
  final TrainingType type;
  @override
  final TrainingLevel level;
  @override
  final TrainingStatus status;
  @override
  final bool forExamOnly;
  @override
  final Attachment? audio;
  @override
  final Attachment? image;
  @override
  final String managerId;
  @override
  final String? examId;
  @override
  final String? studyProgrammeSectionId;

  @override
  String toString() {
    return 'Training(id: $id, name: $name, trainingSession: $trainingSession, type: $type, level: $level, status: $status, forExamOnly: $forExamOnly, audio: $audio, image: $image, managerId: $managerId, examId: $examId, studyProgrammeSectionId: $studyProgrammeSectionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Training &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.trainingSession, trainingSession) ||
                other.trainingSession == trainingSession) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.forExamOnly, forExamOnly) ||
                other.forExamOnly == forExamOnly) &&
            (identical(other.audio, audio) || other.audio == audio) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(
                    other.studyProgrammeSectionId, studyProgrammeSectionId) ||
                other.studyProgrammeSectionId == studyProgrammeSectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      trainingSession,
      type,
      level,
      status,
      forExamOnly,
      audio,
      image,
      managerId,
      examId,
      studyProgrammeSectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      __$$_TrainingCopyWithImpl<_$_Training>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TrainingToJson(
      this,
    );
  }
}

abstract class _Training implements Training {
  factory _Training(
      {required final String id,
      required final String name,
      required final TrainingSession trainingSession,
      required final TrainingType type,
      required final TrainingLevel level,
      required final TrainingStatus status,
      required final bool forExamOnly,
      final Attachment? audio,
      final Attachment? image,
      required final String managerId,
      final String? examId,
      final String? studyProgrammeSectionId}) = _$_Training;

  factory _Training.fromJson(Map<String, dynamic> json) = _$_Training.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  TrainingSession get trainingSession;
  @override
  TrainingType get type;
  @override
  TrainingLevel get level;
  @override
  TrainingStatus get status;
  @override
  bool get forExamOnly;
  @override
  Attachment? get audio;
  @override
  Attachment? get image;
  @override
  String get managerId;
  @override
  String? get examId;
  @override
  String? get studyProgrammeSectionId;
  @override
  @JsonKey(ignore: true)
  _$$_TrainingCopyWith<_$_Training> get copyWith =>
      throw _privateConstructorUsedError;
}
