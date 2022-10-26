// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'problem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Problem _$ProblemFromJson(Map<String, dynamic> json) {
  return _Problem.fromJson(json);
}

/// @nodoc
mixin _$Problem {
  String get type => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  int get status => throw _privateConstructorUsedError;
  String get traceId => throw _privateConstructorUsedError;
  List<ErrorItem> get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProblemCopyWith<Problem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemCopyWith<$Res> {
  factory $ProblemCopyWith(Problem value, $Res Function(Problem) then) =
      _$ProblemCopyWithImpl<$Res, Problem>;
  @useResult
  $Res call(
      {String type,
      String title,
      int status,
      String traceId,
      List<ErrorItem> errors});
}

/// @nodoc
class _$ProblemCopyWithImpl<$Res, $Val extends Problem>
    implements $ProblemCopyWith<$Res> {
  _$ProblemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? status = null,
    Object? traceId = null,
    Object? errors = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      traceId: null == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProblemCopyWith<$Res> implements $ProblemCopyWith<$Res> {
  factory _$$_ProblemCopyWith(
          _$_Problem value, $Res Function(_$_Problem) then) =
      __$$_ProblemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String title,
      int status,
      String traceId,
      List<ErrorItem> errors});
}

/// @nodoc
class __$$_ProblemCopyWithImpl<$Res>
    extends _$ProblemCopyWithImpl<$Res, _$_Problem>
    implements _$$_ProblemCopyWith<$Res> {
  __$$_ProblemCopyWithImpl(_$_Problem _value, $Res Function(_$_Problem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? title = null,
    Object? status = null,
    Object? traceId = null,
    Object? errors = null,
  }) {
    return _then(_$_Problem(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      traceId: null == traceId
          ? _value.traceId
          : traceId // ignore: cast_nullable_to_non_nullable
              as String,
      errors: null == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorItem>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Problem implements _Problem {
  _$_Problem(
      {required this.type,
      required this.title,
      required this.status,
      required this.traceId,
      required final List<ErrorItem> errors})
      : _errors = errors;

  factory _$_Problem.fromJson(Map<String, dynamic> json) =>
      _$$_ProblemFromJson(json);

  @override
  final String type;
  @override
  final String title;
  @override
  final int status;
  @override
  final String traceId;
  final List<ErrorItem> _errors;
  @override
  List<ErrorItem> get errors {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_errors);
  }

  @override
  String toString() {
    return 'Problem(type: $type, title: $title, status: $status, traceId: $traceId, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Problem &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.traceId, traceId) || other.traceId == traceId) &&
            const DeepCollectionEquality().equals(other._errors, _errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, title, status, traceId,
      const DeepCollectionEquality().hash(_errors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProblemCopyWith<_$_Problem> get copyWith =>
      __$$_ProblemCopyWithImpl<_$_Problem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProblemToJson(
      this,
    );
  }
}

abstract class _Problem implements Problem {
  factory _Problem(
      {required final String type,
      required final String title,
      required final int status,
      required final String traceId,
      required final List<ErrorItem> errors}) = _$_Problem;

  factory _Problem.fromJson(Map<String, dynamic> json) = _$_Problem.fromJson;

  @override
  String get type;
  @override
  String get title;
  @override
  int get status;
  @override
  String get traceId;
  @override
  List<ErrorItem> get errors;
  @override
  @JsonKey(ignore: true)
  _$$_ProblemCopyWith<_$_Problem> get copyWith =>
      throw _privateConstructorUsedError;
}
