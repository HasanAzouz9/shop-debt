import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/date_time.extension.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/common/presentation/molecules/convertible_amount_text.dart';

import '../organisms/async_invoice_details_dialog.dart';
import '../templates/creditor_records.dart';

class CreditorTransactionCard extends ConsumerWidget {
  const CreditorTransactionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final creditorTransaction = ref.watch(CreditorRecords.creditorTransactionProvider);

    return DefaultTextStyle(
      style: context.textTheme.titleMedium!,
      child: Column(
        mainAxisSize: .min,
        spacing: 12,
        children: [
          Padding(
            padding: context.paddingHorizontal16,
            child: Row(
              children: [
                Expanded(child: Text(creditorTransaction.createdAt.EFormat(context))),
                Text(
                  '#${creditorTransaction.getId}',
                ),
              ],
            ),
          ),
          Padding(
            padding: context.paddingHorizontal16,
            child: Row(
              spacing: 16,
              children: [
                if (creditorTransaction.type == .debt)
                  AppIconButton(
                    onTap: () {
                      showDialog(
                        context: context,
                        useSafeArea: false,
                        builder: (context) {
                          return AsyncInvoiceDetailsDialog(invoiceId: creditorTransaction.getInvoiceId!);
                        },
                      );
                    },
                    icon: Icons.arrow_outward_sharp,
                  ),
                Expanded(
                  child: creditorTransaction.note == null
                      ? const Text('...')
                      : Text(
                          creditorTransaction.note!,
                          overflow: .ellipsis,
                        ),
                ),
                ConvertibleAmountText(
                  value: creditorTransaction.amount,
                  style: context.textTheme.titleLarge!.copyWith(
                    color: creditorTransaction.type == .payment ? Colors.green : Colors.red,
                  ),
                ),
              ],
            ),
          ),

          const Divider(),
        ],
      ),
    );
  }
}
