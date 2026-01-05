import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';

class CalculatorButton extends StatelessWidget {
  final void Function()? onTap;
  final String number;
  final bool isPlus;
  const CalculatorButton({
    super.key,
    required this.onTap,
    required this.number,
    this.isPlus = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 22.w,
        height: 7.h,
        decoration: const BoxDecoration().copyWith(
          border: isPlus ? const Border() : Border.all(color: context.colorScheme.primary),
          borderRadius: BorderRadius.circular(8),
          color: isPlus ? context.colorScheme.inversePrimary : Colors.transparent,
        ),
        child: Center(
          child: Text(
            number,
            style: const TextStyle().copyWith(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontFamily: 'Inter',
            ),
          ),
        ),
      ),
    );
  }
}
