// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.entity.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CustomerEntityAdapter extends TypeAdapter<CustomerEntity> {
  @override
  final int typeId = 1;

  @override
  CustomerEntity read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CustomerEntity(
      id: fields[0] as String,
      name: fields[1] as String,
      phoneNumber: fields[2] as String?,
      notes: (fields[3] as List).cast<String>(),
      currentBalance: fields[4] as double,
    );
  }

  @override
  void write(BinaryWriter writer, CustomerEntity obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.notes)
      ..writeByte(4)
      ..write(obj.currentBalance);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CustomerEntityAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CustomerEntityImpl _$$CustomerEntityImplFromJson(Map<String, dynamic> json) =>
    _$CustomerEntityImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      phoneNumber: json['phone_number'] as String?,
      notes:
          (json['notes'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      currentBalance: (json['current_balance'] as num).toDouble(),
    );

Map<String, dynamic> _$$CustomerEntityImplToJson(
        _$CustomerEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'phone_number': instance.phoneNumber,
      'notes': instance.notes,
      'current_balance': instance.currentBalance,
    };
