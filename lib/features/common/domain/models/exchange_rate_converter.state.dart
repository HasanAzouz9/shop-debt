import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_rate_converter.state.freezed.dart';

@freezed
class ExchangeRateConverterState with _$ExchangeRateConverterState {
  const factory ExchangeRateConverterState({
    @Default(1) double baseRate,
    @Default(false) bool hasSetRate,
  }) = _ExchangeRateConverterState;
}
