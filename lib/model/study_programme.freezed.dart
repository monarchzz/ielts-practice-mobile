// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study_programme.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StudyProgramme _$StudyProgrammeFromJson(Map<String, dynamic> json) {
  return _StudyProgramme.fromJson(json);
}

/// @nodoc
mixin _$StudyProgramme {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  StudyProgrammeType get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StudyProgrammeCopyWith<StudyProgramme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyProgrammeCopyWith<$Res> {
  factory $StudyProgrammeCopyWith(
          StudyProgramme value, $Res Function(StudyProgramme) then) =
      _$StudyProgrammeCopyWithImpl<$Res, StudyProgramme>;
  @useResult
  $Res call(
      {String id, String name, StudyProgrammeType type, String? description});
}

/// @nodoc
class _$StudyProgrammeCopyWithImpl<$Res, $Val extends StudyProgramme>
    implements $StudyProgrammeCopyWith<$Res> {
  _$StudyProgrammeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? description = freezed,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StudyProgrammeType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyProgrammeCopyWith<$Res>
    implements $StudyProgrammeCopyWith<$Res> {
  factory _$$_StudyProgrammeCopyWith(
          _$_StudyProgramme value, $Res Function(_$_StudyProgramme) then) =
      __$$_StudyProgrammeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String name, StudyProgrammeType type, String? description});
}

/// @nodoc
class __$$_StudyProgrammeCopyWithImpl<$Res>
    extends _$StudyProgrammeCopyWithImpl<$Res, _$_StudyProgramme>
    implements _$$_StudyProgrammeCopyWith<$Res> {
  __$$_StudyProgrammeCopyWithImpl(
      _$_StudyProgramme _value, $Res Function(_$_StudyProgramme) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? description = freezed,
  }) {
    return _then(_$_StudyProgramme(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as StudyProgrammeType,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_StudyProgramme implements _StudyProgramme {
  _$_StudyProgramme(
      {required this.id,
      required this.name,
      required this.type,
      this.description});

  factory _$_StudyProgramme.fromJson(Map<String, dynamic> json) =>
      _$$_StudyProgrammeFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final StudyProgrammeType type;
  @override
  final String? description;

  @override
  String toString() {
    return 'StudyProgramme(id: $id, name: $name, type: $type, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyProgramme &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, type, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyProgrammeCopyWith<_$_StudyProgramme> get copyWith =>
      __$$_StudyProgrammeCopyWithImpl<_$_StudyProgramme>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StudyProgrammeToJson(
      this,
    );
  }
}

abstract class _StudyProgramme implements StudyProgramme {
  factory _StudyProgramme(
      {required final String id,
      required final String name,
      required final StudyProgrammeType type,
      final String? description}) = _$_StudyProgramme;

  factory _StudyProgramme.fromJson(Map<String, dynamic> json) =
      _$_StudyProgramme.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  StudyProgrammeType get type;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$_StudyProgrammeCopyWith<_$_StudyProgramme> get copyWith =>
      throw _privateConstructorUsedError;
}
