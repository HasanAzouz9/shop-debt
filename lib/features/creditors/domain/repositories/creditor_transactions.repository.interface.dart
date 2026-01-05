import 'package:shop_debts/core/enum/transaction_type.enum.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor_transaction.entity.dart';

abstract class CreditorTransactionsRepositoryInterface {
  Future<Result<List<CreditorTransactionEntity>>> getAll({
    required int? lastCursor,
    TransactionType? type,
    String? creditorId,
  });

  Future<Result<void>> add({required String creditorId, required double amount, String? note});

  Future<Result<double>> getCreditorsTransactionsTotal();
}
