import 'package:flutter/material.dart';

import '../../../../core/extensions/context.extensions.dart';

class ExchangeRateActionForm extends StatelessWidget {
  final String hint;
  final Widget button;
  const ExchangeRateActionForm({super.key, required this.hint, required this.button});

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: TextFormField(
            enabled: false,
            textAlign: .center,
            decoration: const InputDecoration().copyWith(
              hintStyle: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.secondary),
              contentPadding: EdgeInsets.zero,
              hintText: hint,
            ),
          ),
        ),
        button,
      ],
    );
  }
}
