import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/common/application/exchange_rate_converter.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';

class ManuallyExchangeRateSetter extends ConsumerStatefulWidget {
  const ManuallyExchangeRateSetter({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SetExchangeRateTextFieldState();
}

class _SetExchangeRateTextFieldState extends ConsumerState<ManuallyExchangeRateSetter> with FormValidationMixin {
  late TextEditingController _rateController;
  final GlobalKey<FormState> _rateFormKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    _rateController = TextEditingController();
  }

  void _submit() {
    if (_rateFormKey.currentState?.validate() ?? false) {
      final rate = double.tryParse(_rateController.text) ?? 0.0;
      ref.read(ExchangeRateConverter.provider.notifier).setExchangeRate(rate: rate);
      FocusScope.of(context).unfocus();
    }
  }

  @override
  void dispose() {
    _rateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 16,
      children: [
        Expanded(
          child: Form(
            key: _rateFormKey,
            child: TextFormField(
              textAlign: .center,
              controller: _rateController,
              validator: (value) => validatePositiveNumber(input: value),
              keyboardType: .number,
              textInputAction: .done,
              style: context.textTheme.titleLarge!.copyWith(color: context.colorScheme.secondary),
              decoration: const InputDecoration().copyWith(
                contentPadding: EdgeInsets.zero,
                hintText: AppConstants.addRateManually,
                hintStyle: context.textTheme.titleMedium!.copyWith(color: context.colorScheme.secondary),
              ),
              onFieldSubmitted: (value) => _submit(),
            ),
          ),
        ),
        AppIconButton(onTap: () => _submit(), icon: Icons.check),
      ],
    );
  }
}
