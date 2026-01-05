import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/transactions.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/transactions_remote.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class GetTransactionsTotalController extends StateNotifier<AsyncValue<double>> {
  static final provider = StateNotifierProvider.autoDispose<GetTransactionsTotalController, AsyncValue<double>>(
    (ref) => GetTransactionsTotalController(interface: ref.watch(TransactionsRemoteRepositoryImplementation.provider)),
  );
  GetTransactionsTotalController({required this.interface}) : super(const AsyncLoading()) {
    getTransactionsTotal();
  }
  final TransactionsRepositoryInterface interface;

  getTransactionsTotal() async {
    state = const AsyncLoading();

    final result = await interface.getTotal();
    if (!mounted) return;
    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
