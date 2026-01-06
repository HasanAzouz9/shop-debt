import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../molecules/customer_card_options.dart';
import 'customers_list.dart';

class CustomersListCard extends ConsumerWidget {
  const CustomersListCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(CustomersList.customerProvider);

    return Card(
      margin: context.paddingBottom16,
      child: Padding(
        padding: context.padding8,
        child: Column(
          spacing: 8,
          children: [
            InkWell(
              onTap: () => context.pushNamed(CustomerDetailsPage.routeName, extra: customer),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      customer.name,
                      style: context.textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    customer.currentBalance.compact(),
                    textDirection: TextDirection.ltr,
                    style: context.textTheme.titleLarge,
                  ),
                ],
              ),
            ),
            const CustomerCardOptions(),
          ],
        ),
      ),
    );
  }
}
