import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/common/domain/repositories/exchange_rate.repository.interface.dart';
import 'package:shop_debts/features/common/infrastructure/repositories/exchange_rate.repository.implementation.dart';

class ExchangeRateController extends StateNotifier<AsyncValue<double>> {
  static final provider = StateNotifierProvider.autoDispose<ExchangeRateController, AsyncValue<double>>(
    (ref) => ExchangeRateController(interface: ref.watch(ExchangeRateRepositoryImplementation.provider)),
  );
  ExchangeRateController({required this.interface}) : super(const AsyncLoading()) {
    getExchangeRate();
  }

  final ExchangeRateRepositoryInterface interface;
  getExchangeRate() async {
    state = const AsyncLoading();
    final result = await interface.getExchangeRate();
    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
