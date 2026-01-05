import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../../../../core/extensions/object.extensions.dart';
import '../../../common/application/phone.controller.dart';
import '../../../common/presentation/atoms/app_icon_button.dart';
import '../../../common/presentation/molecules/exception_card_with_refresh.dart';
import '../../application/customer_provider.dart';
import '../pages/customer_details.page.dart';

class CustomerContactCard extends ConsumerWidget {
  const CustomerContactCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerId = ref.watch(CustomerDetailsPage.currentCustomerIdProvider);
    final asyncCustomer = ref.watch(customerProvider(customerId));
    final phoneController = ref.read(PhoneController.provider.notifier);

    return Container(
      padding: context.padding16,
      decoration: BoxDecoration(color: context.colorScheme.surfaceContainer, borderRadius: context.radius8),
      child: Center(
        child: asyncCustomer.when(
          data: (data) {
            return data.phoneNumber == null || data.phoneNumber!.isEmpty
                ? const Text('لا يوجد رقم هاتف')
                : Row(
                    spacing: 16,
                    children: [
                      SelectableText(
                        data.phoneNumber!,
                        style: context.textTheme.titleMedium,
                      ),
                      const Spacer(),
                      AppIconButton(
                        onTap: () => phoneController.makeCall(phoneNumber: data.phoneNumber!),
                        icon: Icons.call,
                      ),
                      AppIconButton(
                        onTap: () => phoneController.sendSMS(phoneNumber: data.phoneNumber!),
                        icon: Icons.message,
                      ),
                    ],
                  );
          },
          error: (error, stacktrace) => ErrorMessageWithAction(
            errorMessage: error.getErrorMessage,
            action: () => ref.invalidate(customerProvider(customerId)),
          ),
          loading: () => const Text(AppConstants.loadingMessage),
        ),
      ),
    );
  }
}
