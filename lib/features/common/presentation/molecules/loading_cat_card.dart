import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class LoadingCatCard extends StatelessWidget {
  const LoadingCatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 16,
      children: [
        Image.asset(
          'assets/images/loading_cat.png',
          height: 30.h,
        ),
        Text(
          AppConstants.loadingMessage,
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
