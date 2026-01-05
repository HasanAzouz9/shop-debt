import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/enum/transaction_type.enum.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/helpers/custom_calculator.dart';
import 'package:shop_debts/features/customers_transactions/application/adding_transaction_state.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/swipe_to_add_customer_transaction.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/select_customer_dropdown.dart';

import '../molecules/add_customer_transaction_note_text_filed.dart';

class AddCustomerTransactionPage extends ConsumerStatefulWidget {
  final TransactionType transactionType;

  const AddCustomerTransactionPage({super.key, required this.transactionType});
  // static const routeName = 'add_customer_transaction_page';
  // static const routePath = '/add_customer_transaction_page';
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddCustomerTransactionPageState();
}

class _AddCustomerTransactionPageState extends ConsumerState<AddCustomerTransactionPage> {
  @override
  Widget build(BuildContext context) {
    final addingTransactionController = ref.read(AddingTransactionStateController.provider.notifier);

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text(AppConstants.addTransactionLabel),
        titleTextStyle: context.textTheme.headlineMedium,
        centerTitle: true,
      ),
      body: Padding(
        padding: context.padding16,
        child: Column(
          spacing: 16,
          children: [
            SelectCustomerDropdown(
              onSelect: (id) => ref.read(AddingTransactionStateController.provider.notifier).setCustomerId(id),
            ),
            const AddCustomerTransactionNoteTextFiled(),
            const Spacer(),
            CustomCalculator(onResultChanged: (value) => addingTransactionController.setAmount(value)),
            const SwipeToAddCustomerTransaction(),
          ],
        ),
      ),
    );
  }
}
