import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class EmptyCatCard extends StatelessWidget {
  const EmptyCatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Image.asset(
          'assets/images/empty_cat.png',
          height: 30.h,
        ),
        Text(
          AppConstants.emptyListMessage,
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
