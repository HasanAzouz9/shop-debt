import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/customers_transactions/application/creditor_form_state.controller.dart';
import 'package:uuid/uuid.dart';

import '../../../../config/const/app_constants.dart';

class CreditorFormDialog extends ConsumerStatefulWidget {
  final CreditorEntity? existingCreditor;
  const CreditorFormDialog({super.key, this.existingCreditor});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreditorFormDialogState();
}

class _CreditorFormDialogState extends ConsumerState<CreditorFormDialog> with FormValidationMixin {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  final _formKey = GlobalKey<FormState>();

  bool get isEdit => widget.existingCreditor != null;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.existingCreditor?.name);
    _phoneController = TextEditingController(text: widget.existingCreditor?.phoneNumber.toString());
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(CreditorFormStateController.provider);
    final notifier = ref.read(CreditorFormStateController.provider.notifier);
    ref.listen<AsyncValue<void>>(
      CreditorFormStateController.provider.select((s) => s.submissionStatus),
      (previous, next) {},
    );
    return AlertDialog(
      title: Text(isEdit ? 'تعديل' : 'أضافة'),
      content: Form(
        key: _formKey,
        child: Column(
          spacing: 16,
          mainAxisSize: .min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: AppConstants.nameLabel),
              onChanged: (val) => notifier.checkName(val, currentName: widget.existingCreditor?.name),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (state.nameExistsStatus.value == true) return validateNameAlreadyExist();
                return validateEmptyField(value);
              },
            ),
            TextFormField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: AppConstants.phoneNumberLabel),
              validator: validatePhoneNumber,
              keyboardType: TextInputType.phone,
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: state.submissionStatus.isLoading
              ? null
              : () {
                  if (_formKey.currentState!.validate()) {
                    final creditor = CreditorEntity(
                      id: isEdit ? widget.existingCreditor!.getId : const Uuid().v4(),
                      name: _nameController.text.trim(),
                      phoneNumber: int.parse(_phoneController.text.trim()),
                      currentBalance: widget.existingCreditor?.getCurrentBalance ?? 0.0,
                    );
                    notifier.submit(creditor: creditor, isEdit: isEdit);
                  }
                },
          child: state.submissionStatus.isLoading
              ? const Icon(Icons.hourglass_top_rounded)
              : Text(isEdit ? 'تعديل' : AppConstants.addLabel),
        ),
      ],
    );
  }
}
