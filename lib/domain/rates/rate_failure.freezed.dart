// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'rate_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RateFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidData,
    required TResult Function() noConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidData,
    TResult? Function()? noConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidData,
    TResult Function()? noConnectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_NoConnectivity value) noConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_NoConnectivity value)? noConnectivity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_NoConnectivity value)? noConnectivity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RateFailureCopyWith<$Res> {
  factory $RateFailureCopyWith(
          RateFailure value, $Res Function(RateFailure) then) =
      _$RateFailureCopyWithImpl<$Res, RateFailure>;
}

/// @nodoc
class _$RateFailureCopyWithImpl<$Res, $Val extends RateFailure>
    implements $RateFailureCopyWith<$Res> {
  _$RateFailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InvalidDataCopyWith<$Res> {
  factory _$$_InvalidDataCopyWith(
          _$_InvalidData value, $Res Function(_$_InvalidData) then) =
      __$$_InvalidDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InvalidDataCopyWithImpl<$Res>
    extends _$RateFailureCopyWithImpl<$Res, _$_InvalidData>
    implements _$$_InvalidDataCopyWith<$Res> {
  __$$_InvalidDataCopyWithImpl(
      _$_InvalidData _value, $Res Function(_$_InvalidData) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InvalidData implements _InvalidData {
  const _$_InvalidData();

  @override
  String toString() {
    return 'RateFailure.invalidData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InvalidData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidData,
    required TResult Function() noConnectivity,
  }) {
    return invalidData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidData,
    TResult? Function()? noConnectivity,
  }) {
    return invalidData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidData,
    TResult Function()? noConnectivity,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_NoConnectivity value) noConnectivity,
  }) {
    return invalidData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_NoConnectivity value)? noConnectivity,
  }) {
    return invalidData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_NoConnectivity value)? noConnectivity,
    required TResult orElse(),
  }) {
    if (invalidData != null) {
      return invalidData(this);
    }
    return orElse();
  }
}

abstract class _InvalidData implements RateFailure {
  const factory _InvalidData() = _$_InvalidData;
}

/// @nodoc
abstract class _$$_NoConnectivityCopyWith<$Res> {
  factory _$$_NoConnectivityCopyWith(
          _$_NoConnectivity value, $Res Function(_$_NoConnectivity) then) =
      __$$_NoConnectivityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NoConnectivityCopyWithImpl<$Res>
    extends _$RateFailureCopyWithImpl<$Res, _$_NoConnectivity>
    implements _$$_NoConnectivityCopyWith<$Res> {
  __$$_NoConnectivityCopyWithImpl(
      _$_NoConnectivity _value, $Res Function(_$_NoConnectivity) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_NoConnectivity implements _NoConnectivity {
  const _$_NoConnectivity();

  @override
  String toString() {
    return 'RateFailure.noConnectivity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoConnectivity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() invalidData,
    required TResult Function() noConnectivity,
  }) {
    return noConnectivity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? invalidData,
    TResult? Function()? noConnectivity,
  }) {
    return noConnectivity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? invalidData,
    TResult Function()? noConnectivity,
    required TResult orElse(),
  }) {
    if (noConnectivity != null) {
      return noConnectivity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InvalidData value) invalidData,
    required TResult Function(_NoConnectivity value) noConnectivity,
  }) {
    return noConnectivity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InvalidData value)? invalidData,
    TResult? Function(_NoConnectivity value)? noConnectivity,
  }) {
    return noConnectivity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InvalidData value)? invalidData,
    TResult Function(_NoConnectivity value)? noConnectivity,
    required TResult orElse(),
  }) {
    if (noConnectivity != null) {
      return noConnectivity(this);
    }
    return orElse();
  }
}

abstract class _NoConnectivity implements RateFailure {
  const factory _NoConnectivity() = _$_NoConnectivity;
}
