import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/date_time.extension.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/models/item.entity.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/item_card.dart';

class InvoiceDetailsDialog extends StatelessWidget {
  final InvoiceEntity invoice;
  const InvoiceDetailsDialog({super.key, required this.invoice});

  static final invoiceItemProvider = Provider<ItemEntity>((ref) => throw UnimplementedError());

  @override
  Widget build(BuildContext context) {
    return Dialog.fullscreen(
      child: Scaffold(
        appBar: AppBar(
          title: Text(invoice.getCreditorDetails?.name ?? ''),
          centerTitle: true,
        ),
        body: Padding(
          padding: context.padding16,
          child: DefaultTextStyle(
            style: context.textTheme.titleMedium!,
            child: Column(
              spacing: 16,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(invoice.createdAt.EFormat(context))),
                    Text('#${invoice.getId}'),
                  ],
                ),
                Text('إجمالي الفاتورة \$ ${invoice.total.toStringAsFixed(2)}'),
                Text('إجمالي المواد ${invoice.items.length}'),
                if (invoice.note != null) Text('ملاحظة: ${invoice.note!}'),
                const Align(
                  alignment: .center,
                  child: Text(
                    'قائمة المواد',
                  ),
                ),

                Expanded(
                  child: ListView.builder(
                    itemCount: invoice.items.length,
                    itemBuilder: (ctx, i) {
                      return ProviderScope(
                        overrides: [invoiceItemProvider.overrideWithValue(invoice.items[i])],
                        child: const ItemCard(),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
