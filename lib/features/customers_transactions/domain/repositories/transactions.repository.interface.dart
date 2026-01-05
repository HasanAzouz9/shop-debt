import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';
import 'package:shop_debts/features/customers_transactions/domain/state/customer_transactions_filter.state.dart';

abstract class TransactionsRepositoryInterface {
  Future<Result<List<TransactionEntity>>> getAll({
    required DateTime? lastCursor,

    CustomerTransactionsFilterState? filter,
  });
  Future<Result<void>> add({required TransactionEntity transaction});
  Future<Result<double>> getTotal();
}
