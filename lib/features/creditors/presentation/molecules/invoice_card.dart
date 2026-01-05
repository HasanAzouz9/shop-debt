import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/features/creditors/presentation/organisms/invoices_list.dart';

import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../../../../core/extensions/date_time.extension.dart';
import '../pages/invoice_details.page.dart';

class InvoiceCard extends ConsumerWidget {
  const InvoiceCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoice = ref.watch(InvoicesList.invoiceProvider);
    return InkWell(
      onTap: () => showDialog(
        context: context,
        useSafeArea: false,
        builder: (context) => InvoiceDetailsDialog(invoice: invoice),
      ),
      child: Card(
        margin: context.padding16,
        child: Padding(
          padding: context.padding8,
          child: DefaultTextStyle(
            style: context.textTheme.titleMedium!,
            child: Column(
              spacing: 16,
              crossAxisAlignment: .start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(invoice.createdAt.EFormat(context))),
                    Text('#${invoice.getId}'),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        invoice.getCreditorDetails!.name,
                        style: const TextStyle().copyWith(color: context.colorScheme.primary),
                      ),
                    ),
                    Text('${invoice.total} \$'),
                  ],
                ),
                if (invoice.note != null)
                  Text(
                    invoice.note!,

                    style: context.textTheme.bodyLarge,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
