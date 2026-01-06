import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../../../common/application/phone.controller.dart';
import '../organisms/customer_form_dialog.dart';
import '../organisms/customers_list.dart';

class CustomersListCard extends ConsumerWidget {
  const CustomersListCard({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customer = ref.watch(CustomersList.customerProvider);
    final phoneState = ref.watch(PhoneController.provider);
    final phoneController = ref.watch(PhoneController.provider.notifier);
    return InkWell(
      onTap: () => context.pushNamed(CustomerDetailsPage.routeName, extra: customer),
      child: Card(
        margin: context.paddingBottom16,
        child: Padding(
          padding: context.padding8,
          child: Column(
            spacing: 8,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Text(
                      customer.name,
                      style: context.textTheme.titleMedium,
                    ),
                  ),
                  Text(
                    customer.currentBalance.compact(),
                    textDirection: TextDirection.ltr,
                    style: context.textTheme.titleLarge,
                  ),
                ],
              ),
              Row(
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
              ),
            ],
          ),
        ),
      ),
    );

    // ListTile(
    //   title: Text(
    //     customer.name,
    //     style: context.textTheme.bodyLarge,
    //   ),
    //   trailing: Text(
    //     customer.currentBalance.compact(),
    //     textDirection: TextDirection.ltr,
    //     style: context.textTheme.titleLarge,
    //   ),
    // ),
    // ),
    // )
  }
}
