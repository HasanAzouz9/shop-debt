import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/enum/transaction_type.enum.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor_transaction.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditor_transactions.repository.interface.dart';

import '../datasource/creditor_transactions.remote_datasource.dart';

class CreditorTransactionsRepositoryImplementation implements CreditorTransactionsRepositoryInterface {
  static final provider = Provider<CreditorTransactionsRepositoryImplementation>(
    (ref) => CreditorTransactionsRepositoryImplementation(
      datasource: ref.watch(CreditorTransactionsRemoteDatasource.provider),
    ),
  );
  final CreditorTransactionsRemoteDatasource datasource;

  CreditorTransactionsRepositoryImplementation({required this.datasource});
  @override
  Future<Result<void>> add({required String creditorId, required double amount, String? note}) async {
    return Result.guardFuture(() => datasource.add(creditorId: creditorId, amount: amount, note: note));
  }

  @override
  Future<Result<List<CreditorTransactionEntity>>> getAll({
    required int? lastCursor,
    TransactionType? type,
    String? creditorId,
  }) async {
    return Result.guardFuture(() => datasource.getAll(lastCursor: lastCursor, type: type, creditorId: creditorId));
  }

  @override
  Future<Result<double>> getCreditorsTransactionsTotal() {
    return Result.guardFuture(() => datasource.getCreditorsTransactionsTotal());
  }
}
