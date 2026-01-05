import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/customers_transactions/application/adding_transaction_state.controller.dart';

GlobalKey<FormState> addingTransactionNoteForm = GlobalKey<FormState>();

class AddCustomerTransactionNoteTextFiled extends ConsumerStatefulWidget {
  const AddCustomerTransactionNoteTextFiled({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddCustomerTransactionNoteTextFiledState();
}

class _AddCustomerTransactionNoteTextFiledState extends ConsumerState<AddCustomerTransactionNoteTextFiled>
    with FormValidationMixin {
  late FocusNode _focusNode;
  late TextEditingController _textController;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final addingTransactionController = ref.read(AddingTransactionStateController.provider.notifier);
    return Form(
      key: addingTransactionNoteForm,
      child: TextFormField(
        controller: _textController,
        focusNode: _focusNode,
        decoration: const InputDecoration(hintText: AppConstants.noteLabel),
        onChanged: (value) => addingTransactionController.setNote(value),
      ),
    );
  }
}
