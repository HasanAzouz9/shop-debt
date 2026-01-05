import 'package:flutter/material.dart';

import '../../../../core/extensions/context.extensions.dart';

class SetExchangeRateLabel extends StatelessWidget {
  const SetExchangeRateLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'حدد سعر الصرف \$',
      style: context.textTheme.titleLarge,
    );
  }
}
