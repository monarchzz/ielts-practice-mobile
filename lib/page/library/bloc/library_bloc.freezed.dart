// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'library_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LibraryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryEventCopyWith<$Res> {
  factory $LibraryEventCopyWith(
          LibraryEvent value, $Res Function(LibraryEvent) then) =
      _$LibraryEventCopyWithImpl<$Res, LibraryEvent>;
}

/// @nodoc
class _$LibraryEventCopyWithImpl<$Res, $Val extends LibraryEvent>
    implements $LibraryEventCopyWith<$Res> {
  _$LibraryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$LibraryEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'LibraryEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LibraryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$LibraryState {
  List<Training> get trainings => throw _privateConstructorUsedError;
  List<Exam> get exams => throw _privateConstructorUsedError;
  List<Testing> get testings => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LibraryStateCopyWith<LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LibraryStateCopyWith<$Res> {
  factory $LibraryStateCopyWith(
          LibraryState value, $Res Function(LibraryState) then) =
      _$LibraryStateCopyWithImpl<$Res, LibraryState>;
  @useResult
  $Res call(
      {List<Training> trainings, List<Exam> exams, List<Testing> testings});
}

/// @nodoc
class _$LibraryStateCopyWithImpl<$Res, $Val extends LibraryState>
    implements $LibraryStateCopyWith<$Res> {
  _$LibraryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainings = null,
    Object? exams = null,
    Object? testings = null,
  }) {
    return _then(_value.copyWith(
      trainings: null == trainings
          ? _value.trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<Training>,
      exams: null == exams
          ? _value.exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      testings: null == testings
          ? _value.testings
          : testings // ignore: cast_nullable_to_non_nullable
              as List<Testing>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LibraryStateCopyWith<$Res>
    implements $LibraryStateCopyWith<$Res> {
  factory _$$_LibraryStateCopyWith(
          _$_LibraryState value, $Res Function(_$_LibraryState) then) =
      __$$_LibraryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Training> trainings, List<Exam> exams, List<Testing> testings});
}

/// @nodoc
class __$$_LibraryStateCopyWithImpl<$Res>
    extends _$LibraryStateCopyWithImpl<$Res, _$_LibraryState>
    implements _$$_LibraryStateCopyWith<$Res> {
  __$$_LibraryStateCopyWithImpl(
      _$_LibraryState _value, $Res Function(_$_LibraryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? trainings = null,
    Object? exams = null,
    Object? testings = null,
  }) {
    return _then(_$_LibraryState(
      trainings: null == trainings
          ? _value._trainings
          : trainings // ignore: cast_nullable_to_non_nullable
              as List<Training>,
      exams: null == exams
          ? _value._exams
          : exams // ignore: cast_nullable_to_non_nullable
              as List<Exam>,
      testings: null == testings
          ? _value._testings
          : testings // ignore: cast_nullable_to_non_nullable
              as List<Testing>,
    ));
  }
}

/// @nodoc

class _$_LibraryState implements _LibraryState {
  const _$_LibraryState(
      {required final List<Training> trainings,
      required final List<Exam> exams,
      required final List<Testing> testings})
      : _trainings = trainings,
        _exams = exams,
        _testings = testings;

  final List<Training> _trainings;
  @override
  List<Training> get trainings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trainings);
  }

  final List<Exam> _exams;
  @override
  List<Exam> get exams {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_exams);
  }

  final List<Testing> _testings;
  @override
  List<Testing> get testings {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testings);
  }

  @override
  String toString() {
    return 'LibraryState(trainings: $trainings, exams: $exams, testings: $testings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LibraryState &&
            const DeepCollectionEquality()
                .equals(other._trainings, _trainings) &&
            const DeepCollectionEquality().equals(other._exams, _exams) &&
            const DeepCollectionEquality().equals(other._testings, _testings));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_trainings),
      const DeepCollectionEquality().hash(_exams),
      const DeepCollectionEquality().hash(_testings));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LibraryStateCopyWith<_$_LibraryState> get copyWith =>
      __$$_LibraryStateCopyWithImpl<_$_LibraryState>(this, _$identity);
}

abstract class _LibraryState implements LibraryState {
  const factory _LibraryState(
      {required final List<Training> trainings,
      required final List<Exam> exams,
      required final List<Testing> testings}) = _$_LibraryState;

  @override
  List<Training> get trainings;
  @override
  List<Exam> get exams;
  @override
  List<Testing> get testings;
  @override
  @JsonKey(ignore: true)
  _$$_LibraryStateCopyWith<_$_LibraryState> get copyWith =>
      throw _privateConstructorUsedError;
}
