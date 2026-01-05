import 'package:flutter/material.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class SwipeToAddCustomerTransactionBackground extends StatelessWidget {
  const SwipeToAddCustomerTransactionBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: .centerRight,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.green,
      ),
      child: Text(
        AppConstants.paymentLabel,
        style: context.textTheme.titleLarge,
      ),
    );
  }
}
