// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoice.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$InvoiceEntityImpl _$$InvoiceEntityImplFromJson(Map<String, dynamic> json) =>
    _$InvoiceEntityImpl(
      id: (json['id'] as num).toInt(),
      creditorId: json['creditor_id'] as String,
      creditorDetails: json['creditors'] == null
          ? null
          : CreditorEntity.fromJson(json['creditors'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      items: (json['items'] as List<dynamic>)
          .map((e) => ItemEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: (json['total'] as num).toDouble(),
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$InvoiceEntityImplToJson(_$InvoiceEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'creditor_id': instance.creditorId,
      'creditors': instance.creditorDetails,
      'created_at': instance.createdAt.toIso8601String(),
      'items': instance.items,
      'total': instance.total,
      'note': instance.note,
    };
