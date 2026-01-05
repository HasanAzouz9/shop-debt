// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'exchange_rate_converter.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExchangeRateConverterState {
  double get baseRate => throw _privateConstructorUsedError;
  bool get hasSetRate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExchangeRateConverterStateCopyWith<ExchangeRateConverterState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExchangeRateConverterStateCopyWith<$Res> {
  factory $ExchangeRateConverterStateCopyWith(ExchangeRateConverterState value,
          $Res Function(ExchangeRateConverterState) then) =
      _$ExchangeRateConverterStateCopyWithImpl<$Res,
          ExchangeRateConverterState>;
  @useResult
  $Res call({double baseRate, bool hasSetRate});
}

/// @nodoc
class _$ExchangeRateConverterStateCopyWithImpl<$Res,
        $Val extends ExchangeRateConverterState>
    implements $ExchangeRateConverterStateCopyWith<$Res> {
  _$ExchangeRateConverterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseRate = null,
    Object? hasSetRate = null,
  }) {
    return _then(_value.copyWith(
      baseRate: null == baseRate
          ? _value.baseRate
          : baseRate // ignore: cast_nullable_to_non_nullable
              as double,
      hasSetRate: null == hasSetRate
          ? _value.hasSetRate
          : hasSetRate // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExchangeRateConverterStateImplCopyWith<$Res>
    implements $ExchangeRateConverterStateCopyWith<$Res> {
  factory _$$ExchangeRateConverterStateImplCopyWith(
          _$ExchangeRateConverterStateImpl value,
          $Res Function(_$ExchangeRateConverterStateImpl) then) =
      __$$ExchangeRateConverterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double baseRate, bool hasSetRate});
}

/// @nodoc
class __$$ExchangeRateConverterStateImplCopyWithImpl<$Res>
    extends _$ExchangeRateConverterStateCopyWithImpl<$Res,
        _$ExchangeRateConverterStateImpl>
    implements _$$ExchangeRateConverterStateImplCopyWith<$Res> {
  __$$ExchangeRateConverterStateImplCopyWithImpl(
      _$ExchangeRateConverterStateImpl _value,
      $Res Function(_$ExchangeRateConverterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? baseRate = null,
    Object? hasSetRate = null,
  }) {
    return _then(_$ExchangeRateConverterStateImpl(
      baseRate: null == baseRate
          ? _value.baseRate
          : baseRate // ignore: cast_nullable_to_non_nullable
              as double,
      hasSetRate: null == hasSetRate
          ? _value.hasSetRate
          : hasSetRate // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExchangeRateConverterStateImpl implements _ExchangeRateConverterState {
  const _$ExchangeRateConverterStateImpl(
      {this.baseRate = 1, this.hasSetRate = false});

  @override
  @JsonKey()
  final double baseRate;
  @override
  @JsonKey()
  final bool hasSetRate;

  @override
  String toString() {
    return 'ExchangeRateConverterState(baseRate: $baseRate, hasSetRate: $hasSetRate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExchangeRateConverterStateImpl &&
            (identical(other.baseRate, baseRate) ||
                other.baseRate == baseRate) &&
            (identical(other.hasSetRate, hasSetRate) ||
                other.hasSetRate == hasSetRate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, baseRate, hasSetRate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExchangeRateConverterStateImplCopyWith<_$ExchangeRateConverterStateImpl>
      get copyWith => __$$ExchangeRateConverterStateImplCopyWithImpl<
          _$ExchangeRateConverterStateImpl>(this, _$identity);
}

abstract class _ExchangeRateConverterState
    implements ExchangeRateConverterState {
  const factory _ExchangeRateConverterState(
      {final double baseRate,
      final bool hasSetRate}) = _$ExchangeRateConverterStateImpl;

  @override
  double get baseRate;
  @override
  bool get hasSetRate;
  @override
  @JsonKey(ignore: true)
  _$$ExchangeRateConverterStateImplCopyWith<_$ExchangeRateConverterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
