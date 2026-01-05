import 'package:flutter/material.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class SwipeToAddCustomerTransactionSecondaryBackground extends StatelessWidget {
  const SwipeToAddCustomerTransactionSecondaryBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .centerLeft,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.red,
      ),

      child: Text(
        AppConstants.debtLabel,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}
