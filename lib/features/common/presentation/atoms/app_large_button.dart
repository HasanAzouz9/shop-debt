import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../core/extensions/context.extensions.dart';

class AppLargeButton extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  const AppLargeButton({super.key, this.onTap, required this.label});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 98.h,
        height: 6.h,
        decoration: const BoxDecoration().copyWith(
          border: Border.all(color: context.colorScheme.primary),
          borderRadius: context.radius8,
        ),
        child: Center(child: Text(label)),
      ),
    );
  }
}
