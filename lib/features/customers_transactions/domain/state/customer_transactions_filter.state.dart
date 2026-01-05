import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/core/enum/transaction_type.enum.dart';

part 'customer_transactions_filter.state.freezed.dart';

@freezed
class CustomerTransactionsFilterState with _$CustomerTransactionsFilterState {
  const factory CustomerTransactionsFilterState({
    @Default(false) bool isFiltered,
    String? customerId,
    TransactionType? transactionType,
    DateTime? createdAt,
  }) = _CustomerTransactionFilterState;
}
