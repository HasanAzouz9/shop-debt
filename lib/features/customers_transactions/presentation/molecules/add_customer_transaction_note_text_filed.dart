import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/customers_transactions/application/adding_transaction_state.controller.dart';

import '../../application/add_transaction.controller.dart';

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
    ref.listen<AsyncValue<void>>(AddTransactionController.provider, (previous, next) {
      if (next is AsyncData && previous is AsyncLoading) {
        _textController.clear();
        _focusNode.unfocus();
      }
    });
    final addingTransactionController = ref.read(AddingTransactionStateController.provider.notifier);
    return TextFormField(
      controller: _textController,
      focusNode: _focusNode,
      decoration: const InputDecoration(hintText: AppConstants.noteLabel),
      onChanged: (value) => addingTransactionController.setNote(value),
    );
  }
}
