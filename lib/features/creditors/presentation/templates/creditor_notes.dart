import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/empty_cat_card.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';
import 'package:shop_debts/features/common/presentation/molecules/loading_cat_card.dart';
import 'package:shop_debts/features/creditors/application/get_creditors_notes.controller.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_card.dart';

import '../molecules/add_creditor_note_text_filed.dart';
import '../molecules/creditor_note_dismissible.dart';

class CreditorNotes extends ConsumerWidget {
  const CreditorNotes({super.key});
  static final noteProvider = Provider.autoDispose<String>((ref) => throw UnimplementedError());
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final creditor = ref.watch(CreditorCard.creditorProvider);
    final notes = ref.watch(GetCreditorsNotesController.provider(creditor.getId));
    return Padding(
      padding: context.padding16,
      child: Column(
        spacing: 16,
        children: [
          const AddCreditorNoteField(),
          Expanded(
            child: notes.when(
              data: (data) => data.isEmpty
                  ? const EmptyCatCard()
                  : ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (ctx, i) {
                        return ProviderScope(
                          overrides: [noteProvider.overrideWithValue(data[i])],
                          child: const CreditorNoteDismissible(),
                        );
                      },
                    ),
              error: (error, stackTrace) => ErrorMessageWithAction(
                errorMessage: error.getErrorMessage,
                action: () => ref.invalidate(GetCreditorsNotesController.provider(creditor.getId)),
              ),
              loading: () => const LoadingCatCard(),
            ),
          ),
        ],
      ),
    );
  }
}
