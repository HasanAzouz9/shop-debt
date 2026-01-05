import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/helpers/custom_calculator.dart';
import 'package:shop_debts/features/customers_transactions/application/adding_transaction_state.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/swipe_to_add_customer_transaction.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../molecules/add_customer_transaction_note_text_filed.dart';

class CustomerDetailsAddTransaction extends ConsumerWidget {
  const CustomerDetailsAddTransaction({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerId = ref.watch(CustomerDetailsPage.currentCustomerIdProvider);
    final addingTransactionController = ref.read(AddingTransactionStateController.provider.notifier);

    return Padding(
      padding: context.padding16,
      child: Column(
        spacing: 16,
        children: [
          const AddCustomerTransactionNoteTextFiled(),
          const Spacer(),
          CustomCalculator(onResultChanged: (value) => addingTransactionController.setAmount(value)),
          SwipeToAddCustomerTransaction(customerId: customerId),
        ],
      ),
    );
  }
}
