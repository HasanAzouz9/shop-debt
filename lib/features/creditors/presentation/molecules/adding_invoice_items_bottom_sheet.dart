import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/creditors/application/add_invoice.controller.dart';
import 'package:shop_debts/features/creditors/application/get_all_creditors.controller.dart';
import 'package:shop_debts/features/creditors/application/get_creditors_transactions_total.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';

import '../../application/add_items_controller.dart';
import 'adding_invoice_item_form.dart';

class AddingInvoiceItemsBottomSheet extends ConsumerWidget {
  final CreditorEntity creditor;
  const AddingInvoiceItemsBottomSheet({super.key, required this.creditor});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addItemsState = ref.watch(AddItemsController.provider);
    final addItemsController = ref.read(AddItemsController.provider.notifier);
    final addInvoiceController = ref.read(AddInvoiceController.provider.notifier);
    final creditorsController = ref.read(GetAllCreditorsController.provider.notifier);
    final creditorsTransactionsTotal = ref.read(GetCreditorsTransactionsTotalController.provider.notifier);

    ref.listen<AsyncValue<void>>(AddInvoiceController.provider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          if (context.mounted) {
            context.showToast(message: 'تمت العملية بنجاح', type: .success);
            creditorsController.getAll();
            creditorsTransactionsTotal.getCreditorsTransactionsTotal();
            context.pop();
          }
        },
        loading: () => context.showToast(message: 'جاري التحقق ...', type: .loading),
        error: (err, stack) {
          context.showToast(message: err.getErrorMessage, type: .error);
        },
      );
    });
    return Card(
      child: Padding(
        padding: context.padding8,
        child: Row(
          mainAxisAlignment: .spaceAround,
          children: [
            AppIconButton(
              onTap: () {
                if (addingItemsFromKey.currentState!.validate()) {
                  addItemsController.addItem();
                }
              },
              iconColor: context.colorScheme.primary,
              icon: Icons.add,
            ),
            AppIconButton(
              onTap: () {
                if (addItemsState.items.isEmpty) {
                  context.showToast(message: AppConstants.emptyInvoiceAlert, type: .failure);
                }
                if (addItemsState.items.isNotEmpty) {
                  addInvoiceController.add(invoice: addItemsState.invoice.copyWith(creditorId: creditor.getId));
                }
              },
              iconColor: Colors.green,
              icon: Icons.check,
            ),
            AppIconButton(
              onTap: () => context.pop(),
              iconColor: Colors.red,
              icon: Icons.close,
            ),
          ],
        ),
      ),
    );
  }
}
