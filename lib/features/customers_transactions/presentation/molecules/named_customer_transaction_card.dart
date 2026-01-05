import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/date_time.extension.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';

import 'customers_transactions_list.dart';

class NamedCustomerTransactionCard extends ConsumerWidget {
  const NamedCustomerTransactionCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transaction = ref.watch(CustomersTransactionsList.transactionProvider);
    return Column(
      children: [
        Padding(
          padding: context.paddingH16V8,
          child: Column(
            crossAxisAlignment: .start,
            spacing: 10,
            children: [
              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(transaction.createdAt.EFormat(context)),
                ],
              ),
              Row(
                mainAxisAlignment: .spaceBetween,
                crossAxisAlignment: .center,
                children: [
                  Text(
                    transaction.getCustomerDetails!.name,
                    style: context.textTheme.titleLarge,
                    overflow: .ellipsis,
                  ),
                  Text(
                    transaction.amount.compact(),
                    style: context.textTheme.headlineSmall!.copyWith(color: transaction.type.color),
                  ),
                ],
              ),
              if (transaction.note != null && transaction.note!.isNotEmpty)
                SizedBox(width: 50.w, child: Text(transaction.note!)),
            ],
          ),
        ),
        const Divider(),
      ],
    );
  }
}
