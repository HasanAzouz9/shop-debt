import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/features/customers_transactions/application/add_customer_note.controller.dart';
import 'package:shop_debts/features/customers_transactions/application/get_customer_notes.controller.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';

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
    final addNoteState = ref.watch(AddCustomerNoteController.provider);
    //TODO make validation for empty note
    return TextField(
      controller: _noteController,
      focusNode: _noteFocus,
      decoration: const InputDecoration().copyWith(
        hint: const Text(AppConstants.addNoteLabel),
        suffixIcon: IconButton(
          onPressed: addNoteState.maybeWhen(
            loading: () => null,

            orElse: () => () {
              if (_noteController.text.isNotEmpty) {
                ref
                    .read(AddCustomerNoteController.provider.notifier)
                    .addNote(customerId: customerId, note: _noteController.text);
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  Future.delayed(const Duration(milliseconds: 100), () {
                    ref.read(GetCustomerNotesController.provider(customerId).notifier).getNotes();
                    _noteController.clear();
                    _noteFocus.unfocus();
                  });
                });
              }
            },
          ),
          icon: const Icon(Icons.add),
        ),
      ),
    );
  }
}
