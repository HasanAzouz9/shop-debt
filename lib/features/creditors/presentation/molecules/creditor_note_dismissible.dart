import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/extensions/context.extensions.dart';
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

    final deletingNoteState = ref.watch(RemoveCreditorNoteController.provider(creditor.getId));
    return Dismissible(
      key: ValueKey(note),
      background: Container(color: context.colorScheme.error),
      confirmDismiss: (direction) async {
        final notifier = ref.read(RemoveCreditorNoteController.provider(creditor.getId).notifier);

        await notifier.remove(note: note);

        if (deletingNoteState is AsyncData) {
          ref.read(GetCreditorsNotesController.provider(creditor.getId).notifier).getAll();

          return true;
        }

        if (deletingNoteState is AsyncError) {
          if (context.mounted) {
            context.showToast(message: 'حدث خطأ ما أثناء الحذف', type: .error);
          }
          return false;
        }

        return false;
      },
      child: NoteCard(note: note),
    );
  }
}
