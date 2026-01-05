import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/transactions.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/datasource/transactions_remote.datasource.dart';

import '../../domain/state/customer_transactions_filter.state.dart';

class TransactionsRemoteRepositoryImplementation implements TransactionsRepositoryInterface {
  static final provider = Provider<TransactionsRemoteRepositoryImplementation>(
    (ref) => TransactionsRemoteRepositoryImplementation(
      remoteDatasource: ref.watch(TransactionsRemoteDatasource.provider),
    ),
  );
  final TransactionsRemoteDatasource remoteDatasource;

  TransactionsRemoteRepositoryImplementation({required this.remoteDatasource});
  @override
  Future<Result<void>> add({required TransactionEntity transaction}) {
    return Result.guardFuture(
      () => remoteDatasource.add(transaction: transaction),
    );
  }

  @override
  Future<Result<List<TransactionEntity>>> getAll({
    required DateTime? lastCursor,
    CustomerTransactionsFilterState? filter,
  }) {
    return Result.guardFuture(
      () => remoteDatasource.getAll(
        filter: filter,
        lastCursor: lastCursor,
      ),
    );
  }

  @override
  Future<Result<double>> getTotal() {
    return Result.guardFuture(
      () => remoteDatasource.getTotal(),
    );
  }
}
