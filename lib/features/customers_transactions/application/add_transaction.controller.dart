import 'package:flutter/widgets.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/core/extensions/async_value.extension.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/transactions.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/transactions_remote.repository.implementation.dart';

import '../domain/models/transaction.entity.dart';

class AddTransactionController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<AddTransactionController, AsyncValue<void>>(
    (ref) => AddTransactionController(repository: ref.watch(TransactionsRemoteRepositoryImplementation.provider)),
  );
  AddTransactionController({required this.repository}) : super(const AsyncData(null));

  final TransactionsRepositoryInterface repository;

  void add({required TransactionEntity transaction, required BuildContext context, VoidCallback? then}) async {
    state = const AsyncLoading();
    final result = await repository.add(transaction: transaction);
    if (!mounted) return;
    result.when(
      success: (_) {
        state = const AsyncData(null);
        then?.call();
      },
      failure: (failure) {
        state = AsyncError(AppException.handle(failure), StackTrace.current);
        state.showErrorToast(context);
      },
    );
  }
}
