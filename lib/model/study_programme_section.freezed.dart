// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study_programme_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudyProgrammeSection _$StudyProgrammeSectionFromJson(
    Map<String, dynamic> json) {
  return _StudyProgrammeSection.fromJson(json);
}

/// @nodoc
mixin _$StudyProgrammeSection {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get ordinal => throw _privateConstructorUsedError;
  String get studyProgrammeId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyProgrammeSectionCopyWith<StudyProgrammeSection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyProgrammeSectionCopyWith<$Res> {
  factory $StudyProgrammeSectionCopyWith(StudyProgrammeSection value,
          $Res Function(StudyProgrammeSection) then) =
      _$StudyProgrammeSectionCopyWithImpl<$Res, StudyProgrammeSection>;
  @useResult
  $Res call({String id, String title, int ordinal, String studyProgrammeId});
}

/// @nodoc
class _$StudyProgrammeSectionCopyWithImpl<$Res,
        $Val extends StudyProgrammeSection>
    implements $StudyProgrammeSectionCopyWith<$Res> {
  _$StudyProgrammeSectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? ordinal = null,
    Object? studyProgrammeId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ordinal: null == ordinal
          ? _value.ordinal
          : ordinal // ignore: cast_nullable_to_non_nullable
              as int,
      studyProgrammeId: null == studyProgrammeId
          ? _value.studyProgrammeId
          : studyProgrammeId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyProgrammeSectionCopyWith<$Res>
    implements $StudyProgrammeSectionCopyWith<$Res> {
  factory _$$_StudyProgrammeSectionCopyWith(_$_StudyProgrammeSection value,
          $Res Function(_$_StudyProgrammeSection) then) =
      __$$_StudyProgrammeSectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String title, int ordinal, String studyProgrammeId});
}

/// @nodoc
class __$$_StudyProgrammeSectionCopyWithImpl<$Res>
    extends _$StudyProgrammeSectionCopyWithImpl<$Res, _$_StudyProgrammeSection>
    implements _$$_StudyProgrammeSectionCopyWith<$Res> {
  __$$_StudyProgrammeSectionCopyWithImpl(_$_StudyProgrammeSection _value,
      $Res Function(_$_StudyProgrammeSection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? ordinal = null,
    Object? studyProgrammeId = null,
  }) {
    return _then(_$_StudyProgrammeSection(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      ordinal: null == ordinal
          ? _value.ordinal
          : ordinal // ignore: cast_nullable_to_non_nullable
              as int,
      studyProgrammeId: null == studyProgrammeId
          ? _value.studyProgrammeId
          : studyProgrammeId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudyProgrammeSection implements _StudyProgrammeSection {
  _$_StudyProgrammeSection(
      {required this.id,
      required this.title,
      required this.ordinal,
      required this.studyProgrammeId});

  factory _$_StudyProgrammeSection.fromJson(Map<String, dynamic> json) =>
      _$$_StudyProgrammeSectionFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final int ordinal;
  @override
  final String studyProgrammeId;

  @override
  String toString() {
    return 'StudyProgrammeSection(id: $id, title: $title, ordinal: $ordinal, studyProgrammeId: $studyProgrammeId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyProgrammeSection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.ordinal, ordinal) || other.ordinal == ordinal) &&
            (identical(other.studyProgrammeId, studyProgrammeId) ||
                other.studyProgrammeId == studyProgrammeId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, ordinal, studyProgrammeId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyProgrammeSectionCopyWith<_$_StudyProgrammeSection> get copyWith =>
      __$$_StudyProgrammeSectionCopyWithImpl<_$_StudyProgrammeSection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyProgrammeSectionToJson(
      this,
    );
  }
}

abstract class _StudyProgrammeSection implements StudyProgrammeSection {
  factory _StudyProgrammeSection(
      {required final String id,
      required final String title,
      required final int ordinal,
      required final String studyProgrammeId}) = _$_StudyProgrammeSection;

  factory _StudyProgrammeSection.fromJson(Map<String, dynamic> json) =
      _$_StudyProgrammeSection.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  int get ordinal;
  @override
  String get studyProgrammeId;
  @override
  @JsonKey(ignore: true)
  _$$_StudyProgrammeSectionCopyWith<_$_StudyProgrammeSection> get copyWith =>
      throw _privateConstructorUsedError;
}
