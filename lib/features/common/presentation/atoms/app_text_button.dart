import 'package:flutter/material.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';

class AppTextButton extends StatelessWidget {
  final void Function()? onTap;
  final String label;
  final Color? labelColor;
  const AppTextButton({super.key, this.onTap, required this.label, this.labelColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Text(
        label,
        style: context.textTheme.titleSmall!.copyWith(color: labelColor),
      ),
    );
  }
}
