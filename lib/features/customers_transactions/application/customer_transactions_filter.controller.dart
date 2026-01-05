import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/transactions.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/domain/state/customer_transactions_filter.state.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/transactions_remote.repository.implementation.dart';

import '../../../core/enum/transaction_type.enum.dart';

class CustomerTransactionsFilterController extends StateNotifier<CustomerTransactionsFilterState> {
  static final provider =
      StateNotifierProvider.autoDispose<CustomerTransactionsFilterController, CustomerTransactionsFilterState>(
        (ref) => CustomerTransactionsFilterController(
          repository: ref.watch(TransactionsRemoteRepositoryImplementation.provider),
        ),
      );
  CustomerTransactionsFilterController({required this.repository}) : super(const CustomerTransactionsFilterState());
  final TransactionsRepositoryInterface repository;

  setDate({required DateTime date}) {
    state = state.copyWith(createdAt: date);
  }

  setType({required TransactionType? type}) {
    state = state.copyWith(transactionType: type);
  }

  setCustomer({required String customerId}) {
    state = state.copyWith(customerId: customerId);
  }
}
