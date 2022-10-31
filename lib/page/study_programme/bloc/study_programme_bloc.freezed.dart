// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'study_programme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$StudyProgrammeEvent {
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
abstract class $StudyProgrammeEventCopyWith<$Res> {
  factory $StudyProgrammeEventCopyWith(
          StudyProgrammeEvent value, $Res Function(StudyProgrammeEvent) then) =
      _$StudyProgrammeEventCopyWithImpl<$Res, StudyProgrammeEvent>;
}

/// @nodoc
class _$StudyProgrammeEventCopyWithImpl<$Res, $Val extends StudyProgrammeEvent>
    implements $StudyProgrammeEventCopyWith<$Res> {
  _$StudyProgrammeEventCopyWithImpl(this._value, this._then);

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
    extends _$StudyProgrammeEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'StudyProgrammeEvent.started()';
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

abstract class _Started implements StudyProgrammeEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$StudyProgrammeState {
  List<StudyProgramme> get studyProgrammes =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudyProgrammeStateCopyWith<StudyProgrammeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyProgrammeStateCopyWith<$Res> {
  factory $StudyProgrammeStateCopyWith(
          StudyProgrammeState value, $Res Function(StudyProgrammeState) then) =
      _$StudyProgrammeStateCopyWithImpl<$Res, StudyProgrammeState>;
  @useResult
  $Res call({List<StudyProgramme> studyProgrammes});
}

/// @nodoc
class _$StudyProgrammeStateCopyWithImpl<$Res, $Val extends StudyProgrammeState>
    implements $StudyProgrammeStateCopyWith<$Res> {
  _$StudyProgrammeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgrammes = null,
  }) {
    return _then(_value.copyWith(
      studyProgrammes: null == studyProgrammes
          ? _value.studyProgrammes
          : studyProgrammes // ignore: cast_nullable_to_non_nullable
              as List<StudyProgramme>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StudyProgrammeStateCopyWith<$Res>
    implements $StudyProgrammeStateCopyWith<$Res> {
  factory _$$_StudyProgrammeStateCopyWith(_$_StudyProgrammeState value,
          $Res Function(_$_StudyProgrammeState) then) =
      __$$_StudyProgrammeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<StudyProgramme> studyProgrammes});
}

/// @nodoc
class __$$_StudyProgrammeStateCopyWithImpl<$Res>
    extends _$StudyProgrammeStateCopyWithImpl<$Res, _$_StudyProgrammeState>
    implements _$$_StudyProgrammeStateCopyWith<$Res> {
  __$$_StudyProgrammeStateCopyWithImpl(_$_StudyProgrammeState _value,
      $Res Function(_$_StudyProgrammeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? studyProgrammes = null,
  }) {
    return _then(_$_StudyProgrammeState(
      studyProgrammes: null == studyProgrammes
          ? _value._studyProgrammes
          : studyProgrammes // ignore: cast_nullable_to_non_nullable
              as List<StudyProgramme>,
    ));
  }
}

/// @nodoc

class _$_StudyProgrammeState implements _StudyProgrammeState {
  const _$_StudyProgrammeState(
      {required final List<StudyProgramme> studyProgrammes})
      : _studyProgrammes = studyProgrammes;

  final List<StudyProgramme> _studyProgrammes;
  @override
  List<StudyProgramme> get studyProgrammes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_studyProgrammes);
  }

  @override
  String toString() {
    return 'StudyProgrammeState(studyProgrammes: $studyProgrammes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StudyProgrammeState &&
            const DeepCollectionEquality()
                .equals(other._studyProgrammes, _studyProgrammes));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_studyProgrammes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StudyProgrammeStateCopyWith<_$_StudyProgrammeState> get copyWith =>
      __$$_StudyProgrammeStateCopyWithImpl<_$_StudyProgrammeState>(
          this, _$identity);
}

abstract class _StudyProgrammeState implements StudyProgrammeState {
  const factory _StudyProgrammeState(
          {required final List<StudyProgramme> studyProgrammes}) =
      _$_StudyProgrammeState;

  @override
  List<StudyProgramme> get studyProgrammes;
  @override
  @JsonKey(ignore: true)
  _$$_StudyProgrammeStateCopyWith<_$_StudyProgrammeState> get copyWith =>
      throw _privateConstructorUsedError;
}
