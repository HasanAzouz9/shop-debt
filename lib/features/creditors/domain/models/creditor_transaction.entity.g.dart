// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creditor_transaction.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditorTransactionEntityImpl _$$CreditorTransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$CreditorTransactionEntityImpl(
      id: (json['id'] as num).toInt(),
      creditorId: json['creditor_id'] as String,
      transactionsTotal: (json['transactions_total'] as num).toDouble(),
      creditorBalance: (json['creditor_balance'] as num).toDouble(),
      createdAt: DateTime.parse(json['created_at'] as String),
      creditorDetails: json['creditors'] == null
          ? null
          : CreditorEntity.fromJson(json['creditors'] as Map<String, dynamic>),
      invoiceId: (json['invoice_id'] as num?)?.toInt(),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      amount: (json['amount'] as num).toDouble(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$CreditorTransactionEntityImplToJson(
        _$CreditorTransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creditor_id': instance.creditorId,
      'transactions_total': instance.transactionsTotal,
      'creditor_balance': instance.creditorBalance,
      'created_at': instance.createdAt.toIso8601String(),
      'creditors': instance.creditorDetails,
      'invoice_id': instance.invoiceId,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'amount': instance.amount,
      'note': instance.note,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.payment: 'payment',
  TransactionType.debt: 'debt',
};
