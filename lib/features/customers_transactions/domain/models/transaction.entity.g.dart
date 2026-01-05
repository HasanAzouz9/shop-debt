// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TransactionEntityAdapter extends TypeAdapter<TransactionEntity> {
  @override
  final int typeId = 2;

  @override
  TransactionEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TransactionEntity(
      id: fields[0] as String,
      customerId: fields[1] as String,
      createdAt: fields[2] as DateTime,
      customerDetails: fields[3] as CustomerEntity?,
      amount: fields[4] as double,
      type: fields[5] as TransactionType,
      note: fields[6] as String?,
      transactionsTotal: fields[7] as double,
    );
  }

  @override
  void write(BinaryWriter writer, TransactionEntity obj) {
    writer
      ..writeByte(8)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.customerId)
      ..writeByte(2)
      ..write(obj.createdAt)
      ..writeByte(3)
      ..write(obj.customerDetails)
      ..writeByte(4)
      ..write(obj.amount)
      ..writeByte(5)
      ..write(obj.type)
      ..writeByte(6)
      ..write(obj.note)
      ..writeByte(7)
      ..write(obj.transactionsTotal);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransactionEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionEntityImpl _$$TransactionEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$TransactionEntityImpl(
      id: json['id'] as String,
      customerId: json['customer_id'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      customerDetails: json['customers'] == null
          ? null
          : CustomerEntity.fromJson(json['customers'] as Map<String, dynamic>),
      amount: (json['amount'] as num).toDouble(),
      type: $enumDecode(_$TransactionTypeEnumMap, json['type']),
      note: json['note'] as String?,
      transactionsTotal: (json['transactions_total'] as num).toDouble(),
    );

Map<String, dynamic> _$$TransactionEntityImplToJson(
        _$TransactionEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'customer_id': instance.customerId,
      'created_at': instance.createdAt.toIso8601String(),
      'customers': instance.customerDetails,
      'amount': instance.amount,
      'type': _$TransactionTypeEnumMap[instance.type]!,
      'note': instance.note,
      'transactions_total': instance.transactionsTotal,
    };

const _$TransactionTypeEnumMap = {
  TransactionType.payment: 'payment',
  TransactionType.debt: 'debt',
};
