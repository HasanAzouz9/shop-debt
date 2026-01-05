import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/features/creditors/application/add_invoice.controller.dart';
import 'package:shop_debts/features/creditors/application/add_items_controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/adding_invoice_item_form.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/item_card.dart';

import '../molecules/adding_invoice_items_bottom_sheet.dart';

class AddInvoicePage extends ConsumerWidget {
  final CreditorEntity creditor;
  const AddInvoicePage({super.key, required this.creditor});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addingItemsState = ref.watch(AddItemsController.provider);
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(creditor.name, overflow: .ellipsis),
          actionsPadding: context.paddingLeft16,
          actions: [
            Text(
              addingItemsState.items.length.toString(),
              style: context.textTheme.titleLarge,
            ),
          ],
        ),
        body: Column(
          children: [
            const AddingInvoiceItemForm(),
            Expanded(
              child: ListView.builder(
                itemCount: addingItemsState.items.length,
                itemBuilder: (ctx, i) {
                  return Padding(
                    padding: context.paddingHorizontal16,
                    child: ItemCard(
                      item: addingItemsState.items[i],
                      isAdding: true,
                    ),
                  );
                },
              ),
            ),
            TextFormField(
              decoration: const InputDecoration().copyWith(
                hintText: 'ملاحظات الفاتورة',
              ),
              onChanged: (value) => ref.read(AddInvoiceController.provider.notifier).setNote(note: value),
            ),
            AddingInvoiceItemsBottomSheet(creditor: creditor),
          ],
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
