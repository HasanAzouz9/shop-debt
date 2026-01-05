import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/helpers/custom_calculator.dart';
import 'package:shop_debts/features/customers_transactions/application/add_transaction.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/adding_transaction_state.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/customer.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/customer_provider.dart';
import 'package:shop_debts/features/customers_transactions/application/get_all_transaction.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/molecules/add_customer_transaction_note_text_filed.dart';

import '../../../../core/enum/transaction_type.enum.dart';
import '../molecules/swipe_to_add_customer_transaction_background.dart';
import '../molecules/swipe_to_add_customer_transaction_child.dart';
import '../molecules/swipe_to_add_customer_transaction_loading_indictor.dart';
import '../molecules/swipe_to_add_customer_transaction_secondary_background.dart';

class SwipeToAddCustomerTransaction extends ConsumerWidget {
  final String? customerId;
  const SwipeToAddCustomerTransaction({super.key, this.customerId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final addingTransactionController = ref.read(AddingTransactionStateController.provider.notifier);
    final addTransactionController = ref.read(AddTransactionController.provider.notifier);
    final addingTransactionState = ref.watch(AddingTransactionStateController.provider);
    final addTransactionState = ref.watch(AddTransactionController.provider);

    return addTransactionState.maybeWhen(
      loading: () => const SwipeToAddCustomerTransactionLoadingIndictor(),
      orElse: () => Dismissible(
        key: const ValueKey('s'),
        background: const SwipeToAddCustomerTransactionBackground(),
        secondaryBackground: const SwipeToAddCustomerTransactionSecondaryBackground(),
        confirmDismiss: (direction) async {
          if (addingTransactionState.amount <= 0) {
            context.showToast(message: 'لا يمكن أن تكون قيمة المعاملة صفرا أو سالبة', type: .failure);
            return false;
          }
          if (direction == DismissDirection.startToEnd) {
            addingTransactionController.setTransactionType(TransactionType.payment);
          }

          if (customerId != null) {
            addingTransactionController.setCustomerId(customerId!);
          }

          final updatedState = ref.read(AddingTransactionStateController.provider);

          if (updatedState.getCustomerId.isEmpty) {
            context.showToast(message: 'يجب اختيار زبون أولا', type: .failure);
            return false;
          }

          WidgetsBinding.instance.addPostFrameCallback((_) {
            addTransactionController.add(
              transaction: updatedState,
              context: context,
              then: () {
                if (context.mounted) {
                  context.showToast(
                    message: addingTransactionState.type == .debt
                        ? 'دين بقيمة ${updatedState.amount}'
                        : 'دفعة بقيمة ${updatedState.amount}',
                    type: .transactionProcessed,
                  );
                  ref.read(GetAllTransactionsController.provider(customerId).notifier).loadFirstPage();
                  ref.read(GetAllTransactionsController.provider(null).notifier).loadFirstPage();
                  ref.invalidate(customerProvider);
                  ref.invalidate(CustomerController.provider);
                  ref.invalidate(calcProvider);
                  addingTransactionNoteForm.currentState!.reset();
                  FocusManager.instance.primaryFocus!.unfocus();
                }
              },
            );
          });

          return false;
        },

        child: const SwipeToAddCustomerTransactionChild(),
      ),
    );
  }
}
