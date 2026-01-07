import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/features/customers_transactions/application/get_all_transaction.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/add_customer_transaction.page.dart';

import '../../../common/presentation/atoms/app_icon_button.dart';
import 'customer_transactions_filter_dialog.dart';

class CustomersTransactionsOptions extends ConsumerWidget {
  final String? customerId;
  const CustomersTransactionsOptions({super.key, this.customerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionController = ref.read(GetAllTransactionsController.provider(customerId).notifier);
    return Padding(
      padding: context.paddingH16V8,
      child: Row(
        spacing: 16,
        children: [
          if (customerId == null)
            AppIconButton(
              icon: Icons.add,
              onTap: () => showDialog(
                context: context,
                builder: (context) => const AddCustomerTransactionPage(),
              ),
            ),
          AppIconButton(
            icon: Icons.filter_alt_outlined,
            onTap: () {
              showDialog(
                context: context,
                builder: (context) => CustomerTransactionsFilterDialog(
                  customerId: customerId,
                ),
              );
            },
          ),
          AppIconButton(
            icon: Icons.restart_alt_sharp,
            onTap: () => transactionController.resetFilter(),
          ),
        ],
      ),
    );
  }
}
