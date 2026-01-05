import 'package:flutter/material.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/date_time.extension.dart';

class DateLabel extends StatelessWidget {
  final DateTime date;
  const DateLabel({super.key, required this.date});

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.center,
      date.EFormat(context),
      style: context.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
        color: context.colorScheme.primary,
      ),
    );
  }
}
