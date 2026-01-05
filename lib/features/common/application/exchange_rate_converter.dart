import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/common/domain/models/exchange_rate_converter.state.dart';

class ExchangeRateConverter extends StateNotifier<ExchangeRateConverterState> {
  static final provider = StateNotifierProvider<ExchangeRateConverter, ExchangeRateConverterState>(
    (ref) => ExchangeRateConverter(),
  );
  ExchangeRateConverter() : super(const ExchangeRateConverterState());

  setExchangeRate({required double rate}) {
    state = state.copyWith(baseRate: rate, hasSetRate: true);
  }

  double convert({required double value}) {
    return value * state.baseRate;
  }
}
