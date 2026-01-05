import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/creditors/application/add_creditor_transaction.controller.dart';
import 'package:shop_debts/features/creditors/application/get_creditors_transactions_total.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';

import '../../application/get_all_creditors.controller.dart';

class AddCreditorPaymentDialog extends ConsumerStatefulWidget {
  final CreditorEntity creditor;
  const AddCreditorPaymentDialog({super.key, required this.creditor});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddCreditorPaymentDialogState();
}

class _AddCreditorPaymentDialogState extends ConsumerState<AddCreditorPaymentDialog> with FormValidationMixin {
  final GlobalKey<FormState> _paymentFormKey = GlobalKey<FormState>();
  late TextEditingController _amountController;
  late TextEditingController _noteController;
  late FocusNode _amountFocus;
  late FocusNode _noteFocus;

  @override
  void initState() {
    super.initState();
    _amountController = TextEditingController();
    _noteController = TextEditingController();
    _amountFocus = FocusNode();
    _noteFocus = FocusNode();
    _amountFocus.requestFocus();
  }

  @override
  void dispose() {
    _amountController.dispose();
    _noteController.dispose();
    _amountFocus.dispose();
    _noteFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditorsController = ref.read(GetAllCreditorsController.provider.notifier);
    final addPaymentController = ref.watch(AddCreditorTransactionController.provider.notifier);
    final creditorTransactionsController = ref.read(GetCreditorsTransactionsTotalController.provider.notifier);
    ref.listen<AsyncValue<void>>(AddCreditorTransactionController.provider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          if (context.mounted) {
            context.showToast(message: 'تمت العملية بنجاح', type: .success);
            creditorsController.getAll();
            creditorTransactionsController.getCreditorsTransactionsTotal();
            context.pop();
          }
        },
        error: (err, stack) {
          context.showToast(message: err.getErrorMessage, type: .error);
        },
      );
    });
    return AlertDialog(
      actionsAlignment: .center,
      title: Text(
        'دفعة ل ${widget.creditor.name}',
        textAlign: .center,
        style: context.textTheme.titleSmall,
      ),

      content: Form(
        key: _paymentFormKey,
        child: Column(
          mainAxisSize: .min,
          spacing: 16,
          children: [
            TextFormField(
              controller: _amountController,
              focusNode: _amountFocus,
              keyboardType: .number,
              decoration: const InputDecoration().copyWith(hint: const Text('أدخل قيمة الدفعة')),
              textInputAction: .done,
              onFieldSubmitted: (value) => _noteFocus.requestFocus(),
              validator: (value) => validatePositiveNumber(input: value),
            ),
            TextFormField(
              controller: _noteController,
              focusNode: _noteFocus,
              decoration: const InputDecoration().copyWith(hint: const Text('أدخل ملاحظة')),
            ),
          ],
        ),
      ),

      actions: [
        TextButton(
          onPressed: () {
            if (_paymentFormKey.currentState!.validate()) {
              addPaymentController.add(
                amount: double.parse(_amountController.text),
                creditorId: widget.creditor.getId,
                note: _noteController.text.isEmpty ? null : _noteController.text,
              );
            }
          },
          child: const Text('أضف'),
        ),
      ],
    );
  }
}
