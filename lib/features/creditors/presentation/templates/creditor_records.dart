import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/convertible_amount_text.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';
import 'package:shop_debts/features/common/presentation/molecules/loading_cat_card.dart';
import 'package:shop_debts/features/common/presentation/organisms/list_footer.dart';
import 'package:shop_debts/features/creditors/application/get_all_creditors_transactions.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor_transaction.entity.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_card.dart';

import '../molecules/creditor_transaction_card.dart';

class CreditorRecords extends ConsumerStatefulWidget {
  const CreditorRecords({super.key});
  static final creditorTransactionProvider = Provider<CreditorTransactionEntity>((ref) => throw UnimplementedError());
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreditorRecordsState();
}

class _CreditorRecordsState extends ConsumerState<CreditorRecords> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.95) {
      final creditorId = ref.read(CreditorCard.creditorProvider).getId;
      final state = ref.read(GetAllCreditorsTransactionsController.provider(creditorId));

      state.whenOrNull(
        data: (_, hasMore, isLoading, __) {
          if (hasMore && !isLoading) {
            ref.read(GetAllCreditorsTransactionsController.provider(creditorId).notifier).loadNextPage();
          }
        },
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditor = ref.watch(CreditorCard.creditorProvider);
    final creditorTransactions = ref.watch(GetAllCreditorsTransactionsController.provider(creditor.getId));
    return Column(
      children: [
        Container(
          padding: context.paddingH16V8,
          margin: context.padding16,
          decoration: const BoxDecoration().copyWith(
            border: Border.all(color: context.colorScheme.onPrimary),
            borderRadius: context.radius8,
          ),
          child: Row(
            mainAxisSize: .min,
            spacing: 24,
            children: [
              const Text('صافي الحساب'),
              ConvertibleAmountText(
                value: creditor.getCurrentBalance,
                style: context.textTheme.titleLarge,
              ),
            ],
          ),
        ),
        Expanded(
          child: creditorTransactions.when(
            initial: () => const LoadingCatCard(),
            error: (error) => Center(
              child: ErrorMessageWithAction(
                errorMessage: error.getErrorMessage,
                action: () => ref.invalidate(GetAllCreditorsTransactionsController.provider(creditor.getId)),
              ),
            ),
            data: (creditorTransactions, hasMore, isLoading, error) {
              return ListView.builder(
                controller: _scrollController,
                itemCount: creditorTransactions.length + 1,
                itemBuilder: (ctx, i) {
                  if (i == creditorTransactions.length) {
                    if (isLoading) return const LoadingCatCard();

                    if (error != null) {
                      return Center(
                        child: ErrorMessageWithAction(
                          errorMessage: error.getErrorMessage,
                          action: () => ref.invalidate(GetAllCreditorsTransactionsController.provider(creditor.getId)),
                        ),
                      );
                    }

                    return ListFooter(hasMore: hasMore, isEmpty: creditorTransactions.isEmpty);
                  }

                  return ProviderScope(
                    overrides: [CreditorRecords.creditorTransactionProvider.overrideWithValue(creditorTransactions[i])],
                    child: const CreditorTransactionCard(),
                  );
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
