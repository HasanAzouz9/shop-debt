import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/presentation/organisms/creditor_card_options.dart';
import 'package:shop_debts/features/creditors/presentation/organisms/creditors_list.dart';
import 'package:shop_debts/features/creditors/presentation/pages/creditor_details.page.dart';

import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../../../common/presentation/molecules/convertible_amount_text.dart';

class CreditorCard extends ConsumerWidget {
  const CreditorCard({super.key});
  static final creditorProvider = StateProvider<CreditorEntity>(
    (ref) => const CreditorEntity(id: '', currentBalance: 0, name: ''),
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final creditor = ref.watch(CreditorsList.creditorProvider);
    return Card(
      margin: context.paddingBottom16,
      child: Padding(
        padding: context.padding8,
        child: Column(
          spacing: 16,
          children: [
            Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      ref.read(creditorProvider.notifier).state = creditor;
                      context.pushNamed(CreditorDetailsPage.routeName);
                    },
                    child: Text(
                      creditor.name,
                      style: context.textTheme.titleMedium,
                    ),
                  ),
                ),
                ConvertibleAmountText(value: creditor.getCurrentBalance),
              ],
            ),
            const CreditorCardOptions(),
          ],
        ),
      ),
    );
  }
}
