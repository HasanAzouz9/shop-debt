import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditor_transactions.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditor_transactions.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class GetCreditorsTransactionsTotalController extends StateNotifier<AsyncValue<double>> {
  static final provider =
      StateNotifierProvider.autoDispose<GetCreditorsTransactionsTotalController, AsyncValue<double>>(
        (ref) => GetCreditorsTransactionsTotalController(
          interface: ref.watch(CreditorTransactionsRepositoryImplementation.provider),
        ),
      );
  GetCreditorsTransactionsTotalController({required this.interface}) : super(const AsyncLoading()) {
    getCreditorsTransactionsTotal();
  }
  final CreditorTransactionsRepositoryInterface interface;

  getCreditorsTransactionsTotal() async {
    state = const AsyncLoading();

    final result = await interface.getCreditorsTransactionsTotal();
    if (!mounted) return;
    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
