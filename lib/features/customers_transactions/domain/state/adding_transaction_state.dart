import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';

part 'adding_transaction_state.freezed.dart';

@freezed
class AddingTransactionState with _$AddingTransactionState {
  const AddingTransactionState._();
  const factory AddingTransactionState({
    required TransactionEntity transaction,
  }) = _AddingTransactionState;
}
