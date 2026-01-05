// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ItemEntityImpl _$$ItemEntityImplFromJson(Map<String, dynamic> json) =>
    _$ItemEntityImpl(
      name: json['name'] as String,
      quantity: (json['quantity'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
      total: (json['total'] as num).toDouble(),
    );

Map<String, dynamic> _$$ItemEntityImplToJson(_$ItemEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'total': instance.total,
    };
