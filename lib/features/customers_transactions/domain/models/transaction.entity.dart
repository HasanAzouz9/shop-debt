import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';
// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/json_serializable.dart';

import '../../../../core/enum/transaction_type.enum.dart';

part 'transaction.entity.freezed.dart';
part 'transaction.entity.g.dart';

@freezed
@HiveType(typeId: 2)
class TransactionEntity with _$TransactionEntity {
  const TransactionEntity._();

  const factory TransactionEntity({
    @HiveField(0) @protected required String id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'customer_id') @HiveField(1) @protected required String customerId,

    // ignore: invalid_annotation_target
    @HiveField(2) @JsonKey(name: 'created_at') required DateTime createdAt,

    @HiveField(3)
    // ignore: invalid_annotation_target
    // @JsonKey(name: 'customer_id')
    @protected
    // ignore: invalid_annotation_target
    @JsonKey(name: 'customers')
    CustomerEntity? customerDetails,

    @HiveField(4) required double amount,

    @HiveField(5) required TransactionType type,

    @HiveField(6) String? note,

    // ignore: invalid_annotation_target
    @JsonKey(name: 'transactions_total') @HiveField(7) @protected required double transactionsTotal,
  }) = _TransactionEntity;

  factory TransactionEntity.fromJson(Map<String, dynamic> json) => _$TransactionEntityFromJson(json);

  String get getId => id;
  CustomerEntity? get getCustomerDetails => customerDetails;
  String get getCustomerId => customerId;
  double get getTransactionsTotal => transactionsTotal;
}
