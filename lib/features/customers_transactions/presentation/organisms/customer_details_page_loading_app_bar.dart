import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class CustomerLoadingAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomerLoadingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
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
          child: Center(
            child: Text(
              AppConstants.loadingMessage,
              style: context.textTheme.titleLarge,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(26.h);
}
