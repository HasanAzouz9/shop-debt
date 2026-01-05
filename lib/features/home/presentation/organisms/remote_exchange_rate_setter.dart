import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/application/exchange_rate.controller.dart';
import 'package:shop_debts/features/common/application/exchange_rate_converter.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';

import '../molecules/exchange_rate_action_form.dart';

class RemoteExchangeRateSetter extends ConsumerWidget {
  const RemoteExchangeRateSetter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exchangeRateState = ref.watch(ExchangeRateController.provider);
    final exchangeRateConverter = ref.read(ExchangeRateConverter.provider.notifier);
    return exchangeRateState.when(
      data: (data) => ExchangeRateActionForm(
        hint: data.compact(),
        button: AppIconButton(
          onTap: () => exchangeRateConverter.setExchangeRate(rate: data),
          icon: Icons.check,
        ),
      ),
      error: (error, stackTrace) => ExchangeRateActionForm(
        hint: error.getErrorMessage,
        button: AppIconButton(
          onTap: () => ref.invalidate(ExchangeRateController.provider),
          icon: Icons.error_outline,
        ),
      ),
      loading: () => const ExchangeRateActionForm(
        hint: AppConstants.loadingExchangeRate,
        button: AppIconButton(icon: Icons.hourglass_bottom),
      ),
    );
  }
}
