import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class SwipeToAddCustomerTransactionChild extends StatelessWidget {
  const SwipeToAddCustomerTransactionChild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98.w,
      height: 6.h,
      decoration: BoxDecoration(
        color: context.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Center(
        child: Text(AppConstants.swipeToAddTransactionLabel),
      ),
    );
  }
}
