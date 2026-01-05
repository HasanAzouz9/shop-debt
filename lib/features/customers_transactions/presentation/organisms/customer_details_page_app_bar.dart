import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/customer_form_dialog.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../../../../core/enum/customer_details.enum.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../../../../core/extensions/double.extension.dart';
import '../../../common/presentation/atoms/app_icon_button.dart';

class CustomerDataAppBar extends ConsumerWidget implements PreferredSizeWidget {
  final CustomerEntity customer;
  final PageController pageController;
  const CustomerDataAppBar({super.key, required this.customer, required this.pageController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      centerTitle: true,
      backgroundColor: context.colorScheme.primaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
      ),
      title: Text(customer.name),
      bottom: PreferredSize(
        preferredSize: Size(100.w, 20.h),
        child: SizedBox(
          width: 100.w,
          height: 20.h,

          child: Column(
            mainAxisAlignment: .spaceAround,
            children: [
              Text(
                '\u200E${customer.currentBalance.compact()} sp',
                style: context.textTheme.headlineLarge,
              ),
              Row(
                mainAxisAlignment: .spaceEvenly,
                children: [
                  ...CustomerDetailsPageEnum.values.map(
                    (e) => AppIconButton(
                      onTap: () => pageController.animateToPage(
                        e.pageIndex,
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                      ),
                      icon: e.icon,

                      iconSize: ref.watch(CustomerDetailsPage.pageIndexProvider) == e.pageIndex ? 36 : 28,
                      iconColor: ref.watch(CustomerDetailsPage.pageIndexProvider) == e.pageIndex
                          ? context.colorScheme.onPrimaryContainer
                          : null,
                    ),
                  ),
                  AppIconButton(
                    icon: Icons.edit_outlined,
                    iconSize: 28,
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => CustomerFormDialog(
                        existingCustomer: customer,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(26.h);
}
