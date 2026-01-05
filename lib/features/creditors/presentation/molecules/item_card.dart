import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/common/presentation/molecules/convertible_amount_text.dart';
import 'package:shop_debts/features/creditors/application/add_items_controller.dart';
import 'package:shop_debts/features/creditors/domain/models/item.entity.dart';
import 'package:shop_debts/features/creditors/presentation/pages/invoice_details.page.dart';

class ItemCard extends ConsumerWidget {
  final ItemEntity? item;
  final bool isAdding;
  const ItemCard({super.key, this.item, this.isAdding = false});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final itemState = item ?? ref.watch(InvoiceDetailsDialog.invoiceItemProvider);
    return Card(
      margin: context.paddingBottom16,
      child: Padding(
        padding: context.paddingH16V8,
        child: DefaultTextStyle(
          style: context.textTheme.titleMedium!,
          child: Column(
            crossAxisAlignment: .start,
            spacing: 16,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      itemState!.name,
                      style: const TextStyle().copyWith(color: context.colorScheme.primaryContainer),
                    ),
                  ),
                  if (isAdding)
                    AppIconButton(
                      onTap: () {
                        ref.read(AddItemsController.provider.notifier).removeItem(item: item!);
                      },
                      icon: Icons.remove,
                      iconColor: Colors.red,
                    ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 1,
                    child: Align(
                      alignment: .centerRight,
                      child: ConvertibleAmountText(value: itemState.price),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Text(
                      itemState.quantity.toString(),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Align(
                      alignment: .centerLeft,
                      child: ConvertibleAmountText(value: itemState.total),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
