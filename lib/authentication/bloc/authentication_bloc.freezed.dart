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
    required TResult Function(_AuthenticationStatusChangedEvent value)
        statusChanged,
    required TResult Function(_AuthenticationLogoutRequestedEvent value)
        logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChangedEvent value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequestedEvent value)?
        logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChangedEvent value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequestedEvent value)?
        logoutRequested,
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
abstract class _$$_AuthenticationStatusChangedEventCopyWith<$Res> {
  factory _$$_AuthenticationStatusChangedEventCopyWith(
          _$_AuthenticationStatusChangedEvent value,
          $Res Function(_$_AuthenticationStatusChangedEvent) then) =
      __$$_AuthenticationStatusChangedEventCopyWithImpl<$Res>;
  @useResult
  $Res call({AuthenticationStatus status});
}

/// @nodoc
class __$$_AuthenticationStatusChangedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationStatusChangedEvent>
    implements _$$_AuthenticationStatusChangedEventCopyWith<$Res> {
  __$$_AuthenticationStatusChangedEventCopyWithImpl(
      _$_AuthenticationStatusChangedEvent _value,
      $Res Function(_$_AuthenticationStatusChangedEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$_AuthenticationStatusChangedEvent(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
    ));
  }
}

/// @nodoc

class _$_AuthenticationStatusChangedEvent
    implements _AuthenticationStatusChangedEvent {
  const _$_AuthenticationStatusChangedEvent({required this.status});

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
            other is _$_AuthenticationStatusChangedEvent &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationStatusChangedEventCopyWith<
          _$_AuthenticationStatusChangedEvent>
      get copyWith => __$$_AuthenticationStatusChangedEventCopyWithImpl<
          _$_AuthenticationStatusChangedEvent>(this, _$identity);

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
    required TResult Function(_AuthenticationStatusChangedEvent value)
        statusChanged,
    required TResult Function(_AuthenticationLogoutRequestedEvent value)
        logoutRequested,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChangedEvent value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequestedEvent value)?
        logoutRequested,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChangedEvent value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequestedEvent value)?
        logoutRequested,
    required TResult orElse(),
  }) {
    if (statusChanged != null) {
      return statusChanged(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationStatusChangedEvent
    implements AuthenticationEvent {
  const factory _AuthenticationStatusChangedEvent(
          {required final AuthenticationStatus status}) =
      _$_AuthenticationStatusChangedEvent;

  AuthenticationStatus get status;
  @JsonKey(ignore: true)
  _$$_AuthenticationStatusChangedEventCopyWith<
          _$_AuthenticationStatusChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AuthenticationLogoutRequestedEventCopyWith<$Res> {
  factory _$$_AuthenticationLogoutRequestedEventCopyWith(
          _$_AuthenticationLogoutRequestedEvent value,
          $Res Function(_$_AuthenticationLogoutRequestedEvent) then) =
      __$$_AuthenticationLogoutRequestedEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticationLogoutRequestedEventCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res,
        _$_AuthenticationLogoutRequestedEvent>
    implements _$$_AuthenticationLogoutRequestedEventCopyWith<$Res> {
  __$$_AuthenticationLogoutRequestedEventCopyWithImpl(
      _$_AuthenticationLogoutRequestedEvent _value,
      $Res Function(_$_AuthenticationLogoutRequestedEvent) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_AuthenticationLogoutRequestedEvent
    implements _AuthenticationLogoutRequestedEvent {
  const _$_AuthenticationLogoutRequestedEvent();

  @override
  String toString() {
    return 'AuthenticationEvent.logoutRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthenticationLogoutRequestedEvent);
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
    required TResult Function(_AuthenticationStatusChangedEvent value)
        statusChanged,
    required TResult Function(_AuthenticationLogoutRequestedEvent value)
        logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChangedEvent value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequestedEvent value)?
        logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChangedEvent value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequestedEvent value)?
        logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _AuthenticationLogoutRequestedEvent
    implements AuthenticationEvent {
  const factory _AuthenticationLogoutRequestedEvent() =
      _$_AuthenticationLogoutRequestedEvent;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;

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
  $Res call({AuthenticationStatus status, User? user});

  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
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
  $Res call({AuthenticationStatus status, User? user});

  @override
  $UserCopyWith<$Res>? get user;
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
    Object? user = freezed,
  }) {
    return _then(_$_Authentication(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AuthenticationStatus,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$_Authentication implements _Authentication {
  const _$_Authentication({required this.status, this.user});

  @override
  final AuthenticationStatus status;
  @override
  final User? user;

  @override
  String toString() {
    return 'AuthenticationState(status: $status, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);
}

abstract class _Authentication implements AuthenticationState {
  const factory _Authentication(
      {required final AuthenticationStatus status,
      final User? user}) = _$_Authentication;

  @override
  AuthenticationStatus get status;
  @override
  User? get user;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
