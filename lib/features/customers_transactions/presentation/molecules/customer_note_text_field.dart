import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/features/customers_transactions/application/add_customer_note.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/get_customer_notes.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

import '../../../../core/extensions/context.extensions.dart';

class CustomerNoteTextField extends ConsumerStatefulWidget {
  const CustomerNoteTextField({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerNoteTextFieldState();
}

class _CustomerNoteTextFieldState extends ConsumerState<CustomerNoteTextField> {
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
    _noteFocus.unfocus();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerId = ref.watch(CustomerDetailsPage.currentCustomerIdProvider);
    final addNoteState = ref.watch(AddCustomerNoteController.provider(customerId));
    final addNoteController = ref.watch(AddCustomerNoteController.provider(customerId).notifier);

    ref.listen<AsyncValue<void>>(AddCustomerNoteController.provider(customerId), (previous, next) {
      next.whenOrNull(
        data: (_) {
          ref.read(GetCustomerNotesController.provider(customerId).notifier).getNotes();
          _noteController.clear();
          _noteFocus.unfocus();
        },
        error: (error, _) {
          context.showToast(message: error.toString(), type: .error);
        },
      );
    });

    return TextField(
      controller: _noteController,
      focusNode: _noteFocus,
      maxLines: 2,
      decoration: InputDecoration(
        hintText: AppConstants.addNoteLabel,
        suffixIcon: addNoteState.when(
          data: (data) => IconButton(
            onPressed: () => addNoteController.addNote(note: _noteController.text),
            icon: const Icon(Icons.add),
          ),
          error: (error, stackTrace) => IconButton(
            onPressed: () => addNoteController.addNote(note: _noteController.text),
            icon: const Icon(Icons.sync),
          ),
          loading: () => const Icon(Icons.hourglass_top),
        ),
      ),
    );
  }
}
