// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exam.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Exam _$ExamFromJson(Map<String, dynamic> json) {
  return _Exam.fromJson(json);
}

/// @nodoc
mixin _$Exam {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ExamStatus get status => throw _privateConstructorUsedError;
  String get managerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExamCopyWith<Exam> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExamCopyWith<$Res> {
  factory $ExamCopyWith(Exam value, $Res Function(Exam) then) =
      _$ExamCopyWithImpl<$Res, Exam>;
  @useResult
  $Res call({String id, String name, ExamStatus status, String managerId});
}

/// @nodoc
class _$ExamCopyWithImpl<$Res, $Val extends Exam>
    implements $ExamCopyWith<$Res> {
  _$ExamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? managerId = null,
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
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExamStatus,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExamCopyWith<$Res> implements $ExamCopyWith<$Res> {
  factory _$$_ExamCopyWith(_$_Exam value, $Res Function(_$_Exam) then) =
      __$$_ExamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, ExamStatus status, String managerId});
}

/// @nodoc
class __$$_ExamCopyWithImpl<$Res> extends _$ExamCopyWithImpl<$Res, _$_Exam>
    implements _$$_ExamCopyWith<$Res> {
  __$$_ExamCopyWithImpl(_$_Exam _value, $Res Function(_$_Exam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? status = null,
    Object? managerId = null,
  }) {
    return _then(_$_Exam(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ExamStatus,
      managerId: null == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exam implements _Exam {
  _$_Exam(
      {required this.id,
      required this.name,
      required this.status,
      required this.managerId});

  factory _$_Exam.fromJson(Map<String, dynamic> json) => _$$_ExamFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final ExamStatus status;
  @override
  final String managerId;

  @override
  String toString() {
    return 'Exam(id: $id, name: $name, status: $status, managerId: $managerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exam &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, status, managerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExamCopyWith<_$_Exam> get copyWith =>
      __$$_ExamCopyWithImpl<_$_Exam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExamToJson(
      this,
    );
  }
}

abstract class _Exam implements Exam {
  factory _Exam(
      {required final String id,
      required final String name,
      required final ExamStatus status,
      required final String managerId}) = _$_Exam;

  factory _Exam.fromJson(Map<String, dynamic> json) = _$_Exam.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  ExamStatus get status;
  @override
  String get managerId;
  @override
  @JsonKey(ignore: true)
  _$$_ExamCopyWith<_$_Exam> get copyWith => throw _privateConstructorUsedError;
}
