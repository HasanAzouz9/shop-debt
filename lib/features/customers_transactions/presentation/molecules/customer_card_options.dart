import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/extensions/context.extensions.dart';
import '../../../common/application/phone.controller.dart';
import '../../../common/presentation/atoms/app_icon_button.dart';
import '../organisms/customer_form_dialog.dart';
import '../organisms/customers_list.dart';

class CustomerCardOptions extends ConsumerWidget {
  const CustomerCardOptions({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(CustomersList.customerProvider);

    final phoneState = ref.watch(PhoneController.provider);
    final phoneController = ref.watch(PhoneController.provider.notifier);
    return Row(
      spacing: 16,
      children: [
        AppIconButton(
          icon: Icons.edit_outlined,
          onTap: () => showDialog(
            context: context,
            builder: (context) => CustomerFormDialog(
              existingCustomer: customer,
            ),
          ),
        ),
        if (customer.phoneNumber != null && customer.phoneNumber!.isNotEmpty)
          AppIconButton(
            onTap: phoneState.maybeWhen(
              loading: null,
              error: (error, stackTrace) =>
                  () => context.showToast(message: 'خطا', type: .error),
              orElse: () =>
                  () => phoneController.makeCall(phoneNumber: customer.phoneNumber.toString()),
            ),
            icon: Icons.call,
          ),
        if (customer.phoneNumber != null && customer.phoneNumber!.isNotEmpty)
          AppIconButton(
            onTap: phoneState.maybeWhen(
              loading: null,
              error: (error, stackTrace) =>
                  () => context.showToast(message: 'خطا', type: .error),
              orElse: () =>
                  () => phoneController.sendSMS(phoneNumber: customer.phoneNumber.toString()),
            ),
            icon: Icons.message,
          ),
      ],
    );
  }
}
