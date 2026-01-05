import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
// import 'package:json_annotation/json_annotation.dart';
// import 'package:json_serializable/json_serializable.dart';

part 'customer.entity.freezed.dart';
part 'customer.entity.g.dart';

@freezed
@HiveType(typeId: 1)
class CustomerEntity with _$CustomerEntity {
  const CustomerEntity._();

  const factory CustomerEntity({
    @HiveField(0) @protected required String id,
    @HiveField(1) required String name,
    // ignore: invalid_annotation_target
    @HiveField(2) @JsonKey(name: 'phone_number') String? phoneNumber,

    @HiveField(3) @Default([]) List<String> notes,

    @HiveField(4)
    // ignore: invalid_annotation_target
    @JsonKey(name: 'current_balance')
    required double currentBalance,
  }) = _CustomerEntity;

  factory CustomerEntity.fromJson(Map<String, dynamic> json) => _$CustomerEntityFromJson(json);

  String get getId => id;
}
