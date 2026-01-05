import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/features/customers_transactions/application/customer_provider.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../../../common/presentation/atoms/app_icon_button.dart';

class CustomerErrorAppBar extends ConsumerWidget implements PreferredSizeWidget {
  const CustomerErrorAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      backgroundColor: context.colorScheme.primaryContainer,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(24),
        ),
      ),

      bottom: PreferredSize(
        preferredSize: Size(100.w, 20.h),
        child: SizedBox(
          width: 100.w,
          height: 20.h,

          child: Column(
            mainAxisAlignment: .spaceAround,
            children: [
              Text(
                AppConstants.errorAccruedMessage,
                style: context.textTheme.titleLarge,
              ),
              AppIconButton(
                icon: Icons.sync,
                onTap: () => ref.invalidate(customerProvider),
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
