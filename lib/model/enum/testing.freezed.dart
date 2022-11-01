// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'testing.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Testing _$TestingFromJson(Map<String, dynamic> json) {
  return _Testing.fromJson(json);
}

/// @nodoc
mixin _$Testing {
  String get id => throw _privateConstructorUsedError;
  @DurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  DateTime get date => throw _privateConstructorUsedError;
  double? get speakingScores => throw _privateConstructorUsedError;
  String get userId => throw _privateConstructorUsedError;
  String? get managerId => throw _privateConstructorUsedError;
  String? get examId => throw _privateConstructorUsedError;
  String? get trainingId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestingCopyWith<Testing> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestingCopyWith<$Res> {
  factory $TestingCopyWith(Testing value, $Res Function(Testing) then) =
      _$TestingCopyWithImpl<$Res, Testing>;
  @useResult
  $Res call(
      {String id,
      @DurationConverter() Duration duration,
      DateTime date,
      double? speakingScores,
      String userId,
      String? managerId,
      String? examId,
      String? trainingId});
}

/// @nodoc
class _$TestingCopyWithImpl<$Res, $Val extends Testing>
    implements $TestingCopyWith<$Res> {
  _$TestingCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? duration = null,
    Object? date = null,
    Object? speakingScores = freezed,
    Object? userId = null,
    Object? managerId = freezed,
    Object? examId = freezed,
    Object? trainingId = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      speakingScores: freezed == speakingScores
          ? _value.speakingScores
          : speakingScores // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingId: freezed == trainingId
          ? _value.trainingId
          : trainingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TestingCopyWith<$Res> implements $TestingCopyWith<$Res> {
  factory _$$_TestingCopyWith(
          _$_Testing value, $Res Function(_$_Testing) then) =
      __$$_TestingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @DurationConverter() Duration duration,
      DateTime date,
      double? speakingScores,
      String userId,
      String? managerId,
      String? examId,
      String? trainingId});
}

/// @nodoc
class __$$_TestingCopyWithImpl<$Res>
    extends _$TestingCopyWithImpl<$Res, _$_Testing>
    implements _$$_TestingCopyWith<$Res> {
  __$$_TestingCopyWithImpl(_$_Testing _value, $Res Function(_$_Testing) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? duration = null,
    Object? date = null,
    Object? speakingScores = freezed,
    Object? userId = null,
    Object? managerId = freezed,
    Object? examId = freezed,
    Object? trainingId = freezed,
  }) {
    return _then(_$_Testing(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      speakingScores: freezed == speakingScores
          ? _value.speakingScores
          : speakingScores // ignore: cast_nullable_to_non_nullable
              as double?,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      managerId: freezed == managerId
          ? _value.managerId
          : managerId // ignore: cast_nullable_to_non_nullable
              as String?,
      examId: freezed == examId
          ? _value.examId
          : examId // ignore: cast_nullable_to_non_nullable
              as String?,
      trainingId: freezed == trainingId
          ? _value.trainingId
          : trainingId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Testing implements _Testing {
  _$_Testing(
      {required this.id,
      @DurationConverter() required this.duration,
      required this.date,
      this.speakingScores,
      required this.userId,
      this.managerId,
      this.examId,
      this.trainingId});

  factory _$_Testing.fromJson(Map<String, dynamic> json) =>
      _$$_TestingFromJson(json);

  @override
  final String id;
  @override
  @DurationConverter()
  final Duration duration;
  @override
  final DateTime date;
  @override
  final double? speakingScores;
  @override
  final String userId;
  @override
  final String? managerId;
  @override
  final String? examId;
  @override
  final String? trainingId;

  @override
  String toString() {
    return 'Testing(id: $id, duration: $duration, date: $date, speakingScores: $speakingScores, userId: $userId, managerId: $managerId, examId: $examId, trainingId: $trainingId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Testing &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.speakingScores, speakingScores) ||
                other.speakingScores == speakingScores) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.managerId, managerId) ||
                other.managerId == managerId) &&
            (identical(other.examId, examId) || other.examId == examId) &&
            (identical(other.trainingId, trainingId) ||
                other.trainingId == trainingId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, duration, date,
      speakingScores, userId, managerId, examId, trainingId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestingCopyWith<_$_Testing> get copyWith =>
      __$$_TestingCopyWithImpl<_$_Testing>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TestingToJson(
      this,
    );
  }
}

abstract class _Testing implements Testing {
  factory _Testing(
      {required final String id,
      @DurationConverter() required final Duration duration,
      required final DateTime date,
      final double? speakingScores,
      required final String userId,
      final String? managerId,
      final String? examId,
      final String? trainingId}) = _$_Testing;

  factory _Testing.fromJson(Map<String, dynamic> json) = _$_Testing.fromJson;

  @override
  String get id;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  DateTime get date;
  @override
  double? get speakingScores;
  @override
  String get userId;
  @override
  String? get managerId;
  @override
  String? get examId;
  @override
  String? get trainingId;
  @override
  @JsonKey(ignore: true)
  _$$_TestingCopyWith<_$_Testing> get copyWith =>
      throw _privateConstructorUsedError;
}
