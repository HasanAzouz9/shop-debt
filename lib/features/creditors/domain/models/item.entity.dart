import 'package:freezed_annotation/freezed_annotation.dart';

part 'item.entity.freezed.dart';
part 'item.entity.g.dart';

@freezed
class ItemEntity with _$ItemEntity {
  const ItemEntity._();

  const factory ItemEntity({
    required String name,
    required int quantity,
    required double price,
    required double total,
  }) = _ItemEntity;

  /// Controlled creation to enforce total = quantity * price
  factory ItemEntity.create({
    required String name,
    required int quantity,
    required double price,
  }) {
    return ItemEntity(
      name: name,
      quantity: quantity,
      price: price,
      total: quantity * price,
    );
  }

  factory ItemEntity.fromJson(Map<String, dynamic> json) => _$ItemEntityFromJson(json);
}
