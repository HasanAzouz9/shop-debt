import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';

import '../../application/add_creditor_note.controller.dart';
import '../../application/get_creditors_notes.controller.dart';
import 'creditor_card.dart';

class AddCreditorNoteField extends ConsumerStatefulWidget {
  const AddCreditorNoteField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddCreditorNoteFieldState();
}

class _AddCreditorNoteFieldState extends ConsumerState<AddCreditorNoteField> {
  late TextEditingController _noteController;
  late FocusNode _noteFocus;

  @override
  void initState() {
    super.initState();
    _noteController = TextEditingController();
    _noteFocus = FocusNode();
  }

  @override
  void dispose() {
    _noteController.dispose();
    _noteFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditor = ref.watch(CreditorCard.creditorProvider);
    final addingState = ref.watch(AddCreditorNoteController.provider(creditor.getId));
    final addingController = ref.watch(AddCreditorNoteController.provider(creditor.getId).notifier);

    ref.listen<AsyncValue<void>>(AddCreditorNoteController.provider(creditor.getId), (previous, next) {
      next.whenOrNull(
        data: (data) {
          _noteController.clear();
          _noteFocus.unfocus();
          ref.read(GetCreditorsNotesController.provider(creditor.getId).notifier).getAll();
        },
        error: (error, stackTrace) {
          context.showToast(message: error.getErrorMessage, type: .error);
        },
      );
    });

    return Row(
      children: [
        Expanded(
          child: TextFormField(
            controller: _noteController,
            focusNode: _noteFocus,
            maxLines: 3,
            decoration: const InputDecoration().copyWith(
              hintText: 'أضف ملاحظة',
              suffixIcon: addingState.when(
                data: (data) => IconButton(
                  onPressed: () => addingController.add(note: _noteController.text),
                  icon: const Icon(Icons.add),
                ),
                error: (error, stackTrace) => IconButton(
                  onPressed: () => addingController.add(note: _noteController.text),
                  icon: const Icon(Icons.sync),
                ),
                loading: () => const Icon(Icons.hourglass_top),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
