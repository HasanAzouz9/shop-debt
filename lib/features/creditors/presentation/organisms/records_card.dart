import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';
import 'package:shop_debts/features/common/application/exchange_rate_converter.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/creditors/application/get_creditors_transactions_total.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/get_transactions_total.controller.dart';

import '../../../common/presentation/molecules/convertible_amount_text.dart';

class RecordsCard extends ConsumerWidget {
  const RecordsCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final totalCredit = ref.watch(GetCreditorsTransactionsTotalController.provider);
    final totalDebts = ref.watch(GetTransactionsTotalController.provider);
    return Padding(
      padding: context.padding16,

      child: DefaultTextStyle(
        style: context.textTheme.titleMedium!,
        child: Column(
          spacing: 16,
          children: [
            AmountCard(
              title: AppConstants.exchangeRateLabel,
              amount: Text(ref.watch(ExchangeRateConverter.provider).baseRate.compact()),
            ),
            AmountCard(
              title: AppConstants.debtsTotalLabel,
              amount: totalDebts.when(
                data: (data) => Text(data.compact()),
                error: (error, stackTrace) => AppIconButton(
                  icon: Icons.sync_outlined,
                  onTap: () => ref.invalidate(GetTransactionsTotalController.provider),
                ),
                loading: () => const Text(AppConstants.loadingMessage),
              ),
            ),
            AmountCard(
              title: AppConstants.creditorsTotalLabel,
              amount: totalCredit.when(
                data: (data) => ConvertibleAmountText(
                  value: data,
                ),
                error: (error, stackTrace) => AppIconButton(
                  icon: Icons.sync_outlined,
                  onTap: () => ref.invalidate(GetCreditorsTransactionsTotalController.provider),
                ),
                loading: () => const Text(AppConstants.loadingMessage),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AmountCard extends StatelessWidget {
  final String title;
  final Widget amount;
  const AmountCard({super.key, required this.title, required this.amount});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [Text(title), amount],
    );
  }
}
