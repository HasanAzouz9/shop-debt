import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/enum/transaction_type.enum.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';
import 'package:uuid/uuid.dart';

class AddingTransactionStateController extends StateNotifier<TransactionEntity> {
  static final provider = StateNotifierProvider.autoDispose<AddingTransactionStateController, TransactionEntity>(
    (ref) => AddingTransactionStateController(),
  );
  AddingTransactionStateController()
    : super(
        TransactionEntity(
          id: const Uuid().v4(),
          createdAt: DateTime.now(),
          customerId: '',
          amount: 0,
          type: TransactionType.debt,
          transactionsTotal: 0.0,
        ),
      );

  setCustomerId(String customerId) => state = state.copyWith(customerId: customerId);

  setAmount(double amount) => state = state.copyWith(amount: amount);

  setTransactionType(TransactionType transactionType) => state = state.copyWith(type: transactionType);

  setNote(String note) => state = state.copyWith(note: note);
}
