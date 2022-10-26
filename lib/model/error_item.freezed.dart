// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ErrorItem _$ErrorItemFromJson(Map<String, dynamic> json) {
  return _ErrorItem.fromJson(json);
}

/// @nodoc
mixin _$ErrorItem {
  String get code => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorItemCopyWith<ErrorItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorItemCopyWith<$Res> {
  factory $ErrorItemCopyWith(ErrorItem value, $Res Function(ErrorItem) then) =
      _$ErrorItemCopyWithImpl<$Res, ErrorItem>;
  @useResult
  $Res call({String code, String description});
}

/// @nodoc
class _$ErrorItemCopyWithImpl<$Res, $Val extends ErrorItem>
    implements $ErrorItemCopyWith<$Res> {
  _$ErrorItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorItemCopyWith<$Res> implements $ErrorItemCopyWith<$Res> {
  factory _$$_ErrorItemCopyWith(
          _$_ErrorItem value, $Res Function(_$_ErrorItem) then) =
      __$$_ErrorItemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String code, String description});
}

/// @nodoc
class __$$_ErrorItemCopyWithImpl<$Res>
    extends _$ErrorItemCopyWithImpl<$Res, _$_ErrorItem>
    implements _$$_ErrorItemCopyWith<$Res> {
  __$$_ErrorItemCopyWithImpl(
      _$_ErrorItem _value, $Res Function(_$_ErrorItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? description = null,
  }) {
    return _then(_$_ErrorItem(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorItem implements _ErrorItem {
  _$_ErrorItem({required this.code, required this.description});

  factory _$_ErrorItem.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorItemFromJson(json);

  @override
  final String code;
  @override
  final String description;

  @override
  String toString() {
    return 'ErrorItem(code: $code, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorItem &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorItemCopyWith<_$_ErrorItem> get copyWith =>
      __$$_ErrorItemCopyWithImpl<_$_ErrorItem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorItemToJson(
      this,
    );
  }
}

abstract class _ErrorItem implements ErrorItem {
  factory _ErrorItem(
      {required final String code,
      required final String description}) = _$_ErrorItem;

  factory _ErrorItem.fromJson(Map<String, dynamic> json) =
      _$_ErrorItem.fromJson;

  @override
  String get code;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorItemCopyWith<_$_ErrorItem> get copyWith =>
      throw _privateConstructorUsedError;
}
