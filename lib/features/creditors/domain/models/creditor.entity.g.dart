// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'creditor.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreditorEntityImpl _$$CreditorEntityImplFromJson(Map<String, dynamic> json) =>
    _$CreditorEntityImpl(
      id: json['id'] as String,
      currentBalance: (json['current_balance'] as num).toDouble(),
      name: json['name'] as String,
      phoneNumber: (json['phone_number'] as num?)?.toInt(),
      notes:
          (json['notes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$CreditorEntityImplToJson(
        _$CreditorEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'current_balance': instance.currentBalance,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'notes': instance.notes,
    };
