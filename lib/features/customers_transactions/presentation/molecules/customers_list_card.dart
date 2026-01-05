import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../organisms/customers_list.dart';

class CustomersListCard extends ConsumerWidget {
  const CustomersListCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(CustomersList.customerProvider);

    return InkWell(
      onTap: () => context.pushNamed(CustomerDetailsPage.routeName, extra: customer),
      child: Card(
        margin: context.paddingVertical8,
        color: context.colorScheme.primaryContainer,
        child: ListTile(
          title: Text(
            customer.name,
            style: context.textTheme.bodyLarge,
          ),
          trailing: Text(
            customer.currentBalance.compact(),
            textDirection: TextDirection.ltr,
            style: context.textTheme.titleLarge,
          ),
        ),
      ),
    );
  }
}
