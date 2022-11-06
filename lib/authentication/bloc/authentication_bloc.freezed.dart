// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'authentication_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthenticationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusChanged value) statusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationEventCopyWith<$Res> {
  factory $AuthenticationEventCopyWith(
          AuthenticationEvent value, $Res Function(AuthenticationEvent) then) =
      _$AuthenticationEventCopyWithImpl<$Res, AuthenticationEvent>;
}

/// @nodoc
class _$AuthenticationEventCopyWithImpl<$Res, $Val extends AuthenticationEvent>
    implements $AuthenticationEventCopyWith<$Res> {
  _$AuthenticationEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_AuthenticationStatusChangedCopyWith<$Res> {
  factory _$$_AuthenticationStatusChangedCopyWith(
          _$_AuthenticationStatusChanged value,
          $Res Function(_$_AuthenticationStatusChanged) then) =
      __$$_AuthenticationStatusChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$_AuthenticationStatusChangedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationStatusChanged>
    implements _$$_AuthenticationStatusChangedCopyWith<$Res> {
  __$$_AuthenticationStatusChangedCopyWithImpl(
      _$_AuthenticationStatusChanged _value,
      $Res Function(_$_AuthenticationStatusChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_AuthenticationStatusChanged(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStatusChanged implements _AuthenticationStatusChanged {
  const _$_AuthenticationStatusChanged({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationEvent.statusChanged(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationStatusChanged &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStatusChangedCopyWith<_$_AuthenticationStatusChanged>
      get copyWith => __$$_AuthenticationStatusChangedCopyWithImpl<
          _$_AuthenticationStatusChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() logoutRequested,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusChanged value) statusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        logoutRequested,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStatusChanged implements AuthenticationEvent {
  const factory _AuthenticationStatusChanged(
          {required final AuthenticationStatus status}) =
      _$_AuthenticationStatusChanged;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  _$$_AuthenticationStatusChangedCopyWith<_$_AuthenticationStatusChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationLogoutRequestedCopyWith<$Res> {
  factory _$$_AuthenticationLogoutRequestedCopyWith(
          _$_AuthenticationLogoutRequested value,
          $Res Function(_$_AuthenticationLogoutRequested) then) =
      __$$_AuthenticationLogoutRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationLogoutRequestedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationLogoutRequested>
    implements _$$_AuthenticationLogoutRequestedCopyWith<$Res> {
  __$$_AuthenticationLogoutRequestedCopyWithImpl(
      _$_AuthenticationLogoutRequested _value,
      $Res Function(_$_AuthenticationLogoutRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationLogoutRequested
    implements _AuthenticationLogoutRequested {
  const _$_AuthenticationLogoutRequested();

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationLogoutRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() logoutRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusChanged value) statusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLogoutRequested implements AuthenticationEvent {
  const factory _AuthenticationLogoutRequested() =
      _$_AuthenticationLogoutRequested;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthenticationStateCopyWith<AuthenticationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationStateCopyWith<$Res> {
  factory $AuthenticationStateCopyWith(
          AuthenticationState value, $Res Function(AuthenticationState) then) =
      _$AuthenticationStateCopyWithImpl<$Res, AuthenticationState>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class _$AuthenticationStateCopyWithImpl<$Res, $Val extends AuthenticationState>
    implements $AuthenticationStateCopyWith<$Res> {
  _$AuthenticationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthenticationCopyWith<$Res>
    implements $AuthenticationStateCopyWith<$Res> {
  factory _$$_AuthenticationCopyWith(
          _$_Authentication value, $Res Function(_$_Authentication) then) =
      __$$_AuthenticationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$_AuthenticationCopyWithImpl<$Res>
    extends _$AuthenticationStateCopyWithImpl<$Res, _$_Authentication>
    implements _$$_AuthenticationCopyWith<$Res> {
  __$$_AuthenticationCopyWithImpl(
      _$_Authentication _value, $Res Function(_$_Authentication) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_Authentication(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$_Authentication implements _Authentication {
  const _$_Authentication({required this.status});

  @override
  final AuthenticationStatus status;

  @override
  String toString() {
    return 'AuthenticationState(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);
}

abstract class _Authentication implements AuthenticationState {
  const factory _Authentication({required final AuthenticationStatus status}) =
      _$_Authentication;

  @override
  AuthenticationStatus get status;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
