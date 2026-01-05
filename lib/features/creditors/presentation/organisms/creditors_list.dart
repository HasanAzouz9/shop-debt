import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/centered_loading_message.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';
import 'package:shop_debts/features/creditors/application/get_all_creditors.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_card.dart';

import '../../../../config/const/app_constants.dart';

class CreditorsList extends ConsumerWidget {
  const CreditorsList({super.key});
  static final creditorProvider = Provider<CreditorEntity>((ref) => throw UnimplementedError());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final creditorsListState = ref.watch(GetAllCreditorsController.provider);
    return Expanded(
      child: creditorsListState.when(
        data: (data) {
          return data.isEmpty
              ? const Center(child: Text(AppConstants.emptyListMessage))
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (ctx, i) {
                    return ProviderScope(
                      overrides: [creditorProvider.overrideWithValue(data[i])],
                      child: const CreditorCard(),
                    );
                  },
                );
        },
        error: (error, stacktrace) => Center(
          child: ErrorMessageWithAction(
            errorMessage: error.getErrorMessage,
            action: () => ref.invalidate(GetAllCreditorsController.provider),
          ),
        ),
        loading: () => const CenteredLoadingMessage(),
      ),
    );
  }
}
