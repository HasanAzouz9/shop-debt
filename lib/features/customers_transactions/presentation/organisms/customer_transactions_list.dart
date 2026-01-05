import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/customers_transactions_options.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../molecules/customers_transactions_list.dart';

class CustomerTransactionsList extends ConsumerWidget {
  const CustomerTransactionsList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerId = ref.watch(CustomerDetailsPage.currentCustomerIdProvider);

    return Column(
      crossAxisAlignment: .start,
      children: [
        Padding(
          padding: context.padding16,
          child: Text('قائمة المعاملات', style: context.textTheme.titleMedium),
        ),
        CustomersTransactionsOptions(customerId: customerId),
        Expanded(child: CustomersTransactionsList(customerId: customerId)),
      ],
    );
  }
}
