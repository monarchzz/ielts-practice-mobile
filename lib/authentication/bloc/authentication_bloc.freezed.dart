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
    required TResult Function() userUpdated,
    required TResult Function(String path) avatarUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
    TResult? Function()? userUpdated,
    TResult? Function(String path)? avatarUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? userUpdated,
    TResult Function(String path)? avatarUploaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusChanged value) statusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        logoutRequested,
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_AvatarUpdated value) avatarUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_AvatarUpdated value)? avatarUploaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_AvatarUpdated value)? avatarUploaded,
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
    required TResult Function() userUpdated,
    required TResult Function(String path) avatarUploaded,
  }) {
    return statusChanged(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
    TResult? Function()? userUpdated,
    TResult? Function(String path)? avatarUploaded,
  }) {
    return statusChanged?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? userUpdated,
    TResult Function(String path)? avatarUploaded,
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
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_AvatarUpdated value) avatarUploaded,
  }) {
    return statusChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_AvatarUpdated value)? avatarUploaded,
  }) {
    return statusChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_AvatarUpdated value)? avatarUploaded,
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
    required TResult Function() userUpdated,
    required TResult Function(String path) avatarUploaded,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
    TResult? Function()? userUpdated,
    TResult? Function(String path)? avatarUploaded,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? userUpdated,
    TResult Function(String path)? avatarUploaded,
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
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_AvatarUpdated value) avatarUploaded,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_AvatarUpdated value)? avatarUploaded,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_AvatarUpdated value)? avatarUploaded,
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
abstract class _$$_UserUpdatedCopyWith<$Res> {
  factory _$$_UserUpdatedCopyWith(
          _$_UserUpdated value, $Res Function(_$_UserUpdated) then) =
      __$$_UserUpdatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserUpdatedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_UserUpdated>
    implements _$$_UserUpdatedCopyWith<$Res> {
  __$$_UserUpdatedCopyWithImpl(
      _$_UserUpdated _value, $Res Function(_$_UserUpdated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_UserUpdated implements _UserUpdated {
  const _$_UserUpdated();

  @override
  String toString() {
    return 'AuthenticationEvent.userUpdated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserUpdated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() logoutRequested,
    required TResult Function() userUpdated,
    required TResult Function(String path) avatarUploaded,
  }) {
    return userUpdated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
    TResult? Function()? userUpdated,
    TResult? Function(String path)? avatarUploaded,
  }) {
    return userUpdated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? userUpdated,
    TResult Function(String path)? avatarUploaded,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusChanged value) statusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        logoutRequested,
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_AvatarUpdated value) avatarUploaded,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_AvatarUpdated value)? avatarUploaded,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_AvatarUpdated value)? avatarUploaded,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class _UserUpdated implements AuthenticationEvent {
  const factory _UserUpdated() = _$_UserUpdated;
}

/// @nodoc
abstract class _$$_AvatarUpdatedCopyWith<$Res> {
  factory _$$_AvatarUpdatedCopyWith(
          _$_AvatarUpdated value, $Res Function(_$_AvatarUpdated) then) =
      __$$_AvatarUpdatedCopyWithImpl<$Res>;
  @useResult
  $Res call({String path});
}

/// @nodoc
class __$$_AvatarUpdatedCopyWithImpl<$Res>
    extends _$AuthenticationEventCopyWithImpl<$Res, _$_AvatarUpdated>
    implements _$$_AvatarUpdatedCopyWith<$Res> {
  __$$_AvatarUpdatedCopyWithImpl(
      _$_AvatarUpdated _value, $Res Function(_$_AvatarUpdated) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? path = null,
  }) {
    return _then(_$_AvatarUpdated(
      null == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AvatarUpdated implements _AvatarUpdated {
  const _$_AvatarUpdated(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'AuthenticationEvent.avatarUploaded(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AvatarUpdated &&
            (identical(other.path, path) || other.path == path));
  }

  @override
  int get hashCode => Object.hash(runtimeType, path);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AvatarUpdatedCopyWith<_$_AvatarUpdated> get copyWith =>
      __$$_AvatarUpdatedCopyWithImpl<_$_AvatarUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(AuthenticationStatus status) statusChanged,
    required TResult Function() logoutRequested,
    required TResult Function() userUpdated,
    required TResult Function(String path) avatarUploaded,
  }) {
    return avatarUploaded(path);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(AuthenticationStatus status)? statusChanged,
    TResult? Function()? logoutRequested,
    TResult? Function()? userUpdated,
    TResult? Function(String path)? avatarUploaded,
  }) {
    return avatarUploaded?.call(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(AuthenticationStatus status)? statusChanged,
    TResult Function()? logoutRequested,
    TResult Function()? userUpdated,
    TResult Function(String path)? avatarUploaded,
    required TResult orElse(),
  }) {
    if (avatarUploaded != null) {
      return avatarUploaded(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthenticationStatusChanged value) statusChanged,
    required TResult Function(_AuthenticationLogoutRequested value)
        logoutRequested,
    required TResult Function(_UserUpdated value) userUpdated,
    required TResult Function(_AvatarUpdated value) avatarUploaded,
  }) {
    return avatarUploaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult? Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult? Function(_UserUpdated value)? userUpdated,
    TResult? Function(_AvatarUpdated value)? avatarUploaded,
  }) {
    return avatarUploaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthenticationStatusChanged value)? statusChanged,
    TResult Function(_AuthenticationLogoutRequested value)? logoutRequested,
    TResult Function(_UserUpdated value)? userUpdated,
    TResult Function(_AvatarUpdated value)? avatarUploaded,
    required TResult orElse(),
  }) {
    if (avatarUploaded != null) {
      return avatarUploaded(this);
    }
    return orElse();
  }
}

abstract class _AvatarUpdated implements AuthenticationEvent {
  const factory _AvatarUpdated(final String path) = _$_AvatarUpdated;

  String get path;
  @JsonKey(ignore: true)
  _$$_AvatarUpdatedCopyWith<_$_AvatarUpdated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthenticationState {
  AuthenticationStatus get status => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;

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
  $Res call({AuthenticationStatus status, User? user, String? errorMessage});

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
    Object? errorMessage = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
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
  $Res call({AuthenticationStatus status, User? user, String? errorMessage});

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
    Object? errorMessage = freezed,
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
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Authentication implements _Authentication {
  const _$_Authentication({required this.status, this.user, this.errorMessage});

  @override
  final AuthenticationStatus status;
  @override
  final User? user;
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'AuthenticationState(status: $status, user: $user, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authentication &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, user, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      __$$_AuthenticationCopyWithImpl<_$_Authentication>(this, _$identity);
}

abstract class _Authentication implements AuthenticationState {
  const factory _Authentication(
      {required final AuthenticationStatus status,
      final User? user,
      final String? errorMessage}) = _$_Authentication;

  @override
  AuthenticationStatus get status;
  @override
  User? get user;
  @override
  String? get errorMessage;
  @override
  @JsonKey(ignore: true)
  _$$_AuthenticationCopyWith<_$_Authentication> get copyWith =>
      throw _privateConstructorUsedError;
}
