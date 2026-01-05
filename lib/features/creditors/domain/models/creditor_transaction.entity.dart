import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';

import '../../../../core/enum/transaction_type.enum.dart';

part 'creditor_transaction.entity.freezed.dart';
part 'creditor_transaction.entity.g.dart';

@freezed
class CreditorTransactionEntity with _$CreditorTransactionEntity {
  const CreditorTransactionEntity._();
  const factory CreditorTransactionEntity({
    @protected required int id,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'creditor_id') required String creditorId,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'transactions_total') required double transactionsTotal,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'creditor_balance') required double creditorBalance,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required DateTime createdAt,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'creditors') CreditorEntity? creditorDetails,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'invoice_id') int? invoiceId,
    required TransactionType type,
    required double amount,
    String? note,
  }) = _CreditorTransactionEntity;

  factory CreditorTransactionEntity.fromJson(Map<String, dynamic> json) => _$CreditorTransactionEntityFromJson(json);
  int get getId => id;
  String get getCreditorId => creditorId;
  CreditorEntity? get getCreditorDetails => creditorDetails;
  double get getTransactionsTotal => transactionsTotal;
  double get getCreditorBalance => creditorBalance;
  int? get getInvoiceId => invoiceId;
}
