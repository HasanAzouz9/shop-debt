import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/features/common/application/phone.controller.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/add_creditor_payment_dialog.dart';
import 'package:shop_debts/features/creditors/presentation/organisms/edit_creditor_dialog.dart';

import '../../../common/presentation/atoms/app_icon_button.dart';
import 'creditors_list.dart';
import '../pages/add_invoice.page.dart';

class CreditorCardOptions extends ConsumerWidget {
  const CreditorCardOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final creditor = ref.watch(CreditorsList.creditorProvider);
    final phoneState = ref.watch(PhoneController.provider);
    final phoneController = ref.watch(PhoneController.provider.notifier);
    return Row(
      spacing: 16,
      children: [
        AppIconButton(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AddInvoicePage(creditor: creditor),
          ),
          icon: Icons.post_add,
        ),
        AppIconButton(
          onTap: () => showDialog(
            context: context,
            builder: (context) => AddCreditorPaymentDialog(creditor: creditor),
          ),
          icon: Icons.payment,
        ),
        AppIconButton(
          onTap: () => showDialog(
            context: context,
            builder: (context) => const EditCreditorDialog(),
          ),
          icon: Icons.edit,
        ),
        if (creditor.phoneNumber != null)
          AppIconButton(
            onTap: phoneState.maybeWhen(
              loading: null,
              error: (error, stackTrace) =>
                  () => context.showToast(message: 'خطا', type: .error),
              orElse: () =>
                  () => phoneController.makeCall(phoneNumber: creditor.phoneNumber.toString()),
            ),
            icon: Icons.call,
          ),
        if (creditor.phoneNumber != null)
          AppIconButton(
            onTap: phoneState.maybeWhen(
              loading: null,
              error: (error, stackTrace) =>
                  () => context.showToast(message: 'خطا', type: .error),
              orElse: () =>
                  () => phoneController.sendSMS(phoneNumber: creditor.phoneNumber.toString()),
            ),
            icon: Icons.message,
          ),
      ],
    );
  }
}
