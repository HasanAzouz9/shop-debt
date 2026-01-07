import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/features/common/presentation/molecules/remove_note_background.dart';

import '../../../common/presentation/atoms/note_card/note_card.dart';
import '../../application/get_creditors_notes.controller.dart';
import '../../application/remove_creditor_note.controller.dart';
import '../templates/creditor_notes.dart';
import 'creditor_card.dart';

class CreditorNoteDismissible extends ConsumerStatefulWidget {
  const CreditorNoteDismissible({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreditorNoteDismissibleState();
}

class _CreditorNoteDismissibleState extends ConsumerState<CreditorNoteDismissible> {
  @override
  Widget build(BuildContext context) {
    final note = ref.watch(CreditorNotes.noteProvider);
    final creditor = ref.watch(CreditorCard.creditorProvider);
    final removeNoteState = ref.watch(RemoveCreditorNoteController.provider(creditor.getId));
    final removeNoteController = ref.read(RemoveCreditorNoteController.provider(creditor.getId).notifier);
    final notesController = ref.read(GetCreditorsNotesController.provider(creditor.getId).notifier);

    return Dismissible(
      key: ValueKey(note),
      background: RemoveNoteBackground(isLoading: removeNoteState.isLoading),
      confirmDismiss: (_) async {
        final success = await removeNoteController.remove(note: note);
        if (success) {
          notesController.getAll();
          return true;
        } else {
          return false;
        }
      },
      child: NoteCard(note: note),
    );
  }
}
