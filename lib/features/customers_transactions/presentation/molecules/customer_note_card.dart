import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/atoms/note_card/note_card.dart';
import 'package:shop_debts/features/customers_transactions/application/get_customer_notes.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/remove_note.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../organisms/customer_notes_list.dart';

class CustomerNoteCard extends ConsumerWidget {
  const CustomerNoteCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final note = ref.watch(CustomerNotesList.noteProvider);
    final customerId = ref.watch(CustomerDetailsPage.currentCustomerIdProvider);

    return Dismissible(
      key: ValueKey(note),
      background: Container(color: context.colorScheme.error),

      confirmDismiss: (_) async {
        final notifier = ref.read(RemoveNoteController.provider.notifier);

        await notifier.removeNote(
          customerId: customerId,
          note: note,
        );

        final state = ref.read(RemoveNoteController.provider);

        if (state is AsyncData) {
          ref.read(GetCustomerNotesController.provider(customerId).notifier).getNotes();
          return true;
        }

        if (state is AsyncError) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            context.showToast(message: state.error.getErrorMessage, type: .error);
          });

          return false;
        }

        return false;
      },

      child: NoteCard(note: note),
    );
  }
}
