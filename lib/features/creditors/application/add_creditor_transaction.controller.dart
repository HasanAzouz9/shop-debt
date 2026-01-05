import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditor_transactions.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditor_transactions.repository.implementation.dart';

class AddCreditorTransactionController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<AddCreditorTransactionController, AsyncValue<void>>(
    (ref) =>
        AddCreditorTransactionController(interface: ref.watch(CreditorTransactionsRepositoryImplementation.provider)),
  );
  AddCreditorTransactionController({required this.interface}) : super(const AsyncData(null));

  final CreditorTransactionsRepositoryInterface interface;

  add({required double amount, required String creditorId, String? note}) async {
    state = const AsyncLoading();
    final result = await interface.add(creditorId: creditorId, amount: amount, note: note);
    result.when(
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
