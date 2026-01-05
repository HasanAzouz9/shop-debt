import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/features/creditors/presentation/pages/records.page.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customers.page.dart';

class CustomersTransactionsPageNavigationBar extends StatelessWidget {
  const CustomersTransactionsPageNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding4,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: context.colorScheme.primary,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () => context.pushNamed(CustomersPage.routeName),
            icon: Icon(
              Icons.people,
              color: context.colorScheme.primary,
              size: 28,
            ),
          ),
          IconButton(
            onPressed: () => context.pushNamed(RecordsPage.routeName),
            icon: Icon(
              Icons.request_quote_outlined,
              color: context.colorScheme.primary,
              size: 28,
            ),
          ),
        ],
      ),
    );
  }
}
