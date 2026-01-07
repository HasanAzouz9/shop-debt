import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/features/common/presentation/atoms/note_card/note_card.dart';
import 'package:shop_debts/features/common/presentation/molecules/remove_note_background.dart';
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
    final state = ref.watch(RemoveNoteController.provider(customerId));
    final removeNoteController = ref.read(RemoveNoteController.provider(customerId).notifier);
    final notesController = ref.read(GetCustomerNotesController.provider(customerId).notifier);

    return Dismissible(
      key: ValueKey(note),
      background: RemoveNoteBackground(isLoading: state.isLoading),

      confirmDismiss: (_) async {
        final success = await removeNoteController.removeNote(note: note);

        if (success) {
          notesController.getNotes();
          return true;
        } else {
          return false;
        }
      },

      child: NoteCard(note: note),
    );
  }
}
