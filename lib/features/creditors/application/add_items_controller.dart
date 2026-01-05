import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/models/item.entity.dart';
import 'package:shop_debts/features/creditors/domain/state/adding_items.state.dart';

class AddItemsController extends StateNotifier<AddingItemsState> {
  static final provider = StateNotifierProvider.autoDispose<AddItemsController, AddingItemsState>(
    (ref) => AddItemsController(),
  );
  AddItemsController()
    : super(
        AddingItemsState(
          invoice: InvoiceEntity(id: 0, creditorId: '', createdAt: DateTime(2025), items: [], total: 0),
        ),
      ) {
    getItems();
  }

  String? itemName;
  String? itemQuantity;
  String? itemPrice;

  setItemName({required String name}) => itemName = name;

  setItemQuantity({required String quantity}) => itemQuantity = quantity;

  setItemPrice({required String price}) => itemPrice = price;

  getItems() => state.items;

  resetAddingItemSuccess() => state = state.copyWith(addingSuccess: false);

  removeItem({required ItemEntity item}) {
    final updatedItems = state.items.where((i) => i != item).toList();
    state = state.copyWith(
      items: updatedItems,
      invoice: state.invoice.copyWith(items: updatedItems),
    );
  }

  addItem() {
    if (itemName != null && itemQuantity != null && itemPrice != null) {
      final ItemEntity item = ItemEntity.create(
        name: itemName!,
        quantity: int.parse(itemQuantity!),
        price: double.parse(itemPrice!),
      );
      state = state.copyWith(
        items: [...state.items, item],
        addingSuccess: true,
        invoice: state.invoice.copyWith(items: [...state.items, item]),
      );
    }
  }

  startAdding() => state = state.copyWith(isAdding: true);

  stopAdding() => state = state.copyWith(isAdding: false);
}
