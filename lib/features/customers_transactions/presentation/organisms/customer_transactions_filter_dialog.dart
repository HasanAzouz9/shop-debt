import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/core/enum/transaction_type.enum.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/features/customers_transactions/application/customer_transactions_filter.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/get_all_transaction.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/select_customer_dropdown.dart';

class CustomerTransactionsFilterDialog extends ConsumerWidget {
  final String? customerId;

  const CustomerTransactionsFilterDialog({super.key, this.customerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionsFilterState = ref.watch(CustomerTransactionsFilterController.provider);
    final transactionsFilterController = ref.watch(CustomerTransactionsFilterController.provider.notifier);

    return AlertDialog(
      actionsAlignment: .start,

      title: const Text(
        'خيارات الفرز',
        textAlign: .center,
      ),
      content: Column(
        spacing: 16,
        mainAxisSize: .min,
        children: [
          if (customerId == null)
            SelectCustomerDropdown(
              onSelect: (id) => transactionsFilterController.setCustomer(customerId: id),
            ),
          RadioMenuButton(
            value: transactionsFilterState.transactionType,
            groupValue: TransactionType.debt,
            onChanged: (s) {
              if (transactionsFilterState.transactionType == .debt) {
                transactionsFilterController.setType(type: null);
              } else {
                transactionsFilterController.setType(type: .debt);
              }
            },
            child: Text(
              'ديون',
              style: context.textTheme.titleMedium,
            ),
          ),
          RadioMenuButton(
            value: transactionsFilterState.transactionType,
            groupValue: TransactionType.payment,
            onChanged: (s) {
              if (transactionsFilterState.transactionType == .payment) {
                transactionsFilterController.setType(type: null);
              } else {
                transactionsFilterController.setType(type: .payment);
              }
            },
            child: Text(
              'دفعات',
              style: context.textTheme.titleMedium,
            ),
          ),
          SizedBox(
            width: 98.w,
            height: 20.h,
            child: CupertinoDatePicker(
              maximumDate: DateTime.now(),
              initialDateTime: DateTime.now().subtract(const Duration(days: 1)),
              mode: CupertinoDatePickerMode.date,
              onDateTimeChanged: (v) {
                transactionsFilterController.setDate(date: v);
              },
            ),
          ),
        ],
      ),
      actions: [
        TextButton(
          onPressed: () {
            final selectedFilter = ref.read(CustomerTransactionsFilterController.provider);

            final listController = ref.read(GetAllTransactionsController.provider(customerId).notifier);

            listController.setFilter(filterState: selectedFilter);

            context.pop();
          },
          child: const Text('فرز'),
        ),
      ],
    );
  }
}
