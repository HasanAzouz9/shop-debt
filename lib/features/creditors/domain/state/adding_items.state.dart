import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/models/item.entity.dart';

part 'adding_items.state.freezed.dart';

@freezed
class AddingItemsState with _$AddingItemsState {
  const AddingItemsState._();

  const factory AddingItemsState({
    @Default(false) bool isAdding,
    @Default(false) bool addingSuccess,
    required InvoiceEntity invoice,
    @Default([]) List<ItemEntity> items,
  }) = _AddingItemsState;
}
