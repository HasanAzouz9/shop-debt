import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/creditors/application/add_creditor.controller.dart';
import 'package:shop_debts/features/creditors/application/creditor_name_exist.controller.dart';
import 'package:shop_debts/features/creditors/application/get_all_creditors.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:uuid/uuid.dart';

import '../../../../config/const/app_constants.dart';

class AddNewCreditorDialog extends ConsumerStatefulWidget {
  const AddNewCreditorDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddNewCreditorDialogState();
}

class _AddNewCreditorDialogState extends ConsumerState<AddNewCreditorDialog> with FormValidationMixin {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _note;

  final _addCreditorFormKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _note = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _note.dispose();
    super.dispose();
  }

  void _addNewCreditor() {
    final name = _nameController.text.trim();
    final phone = _phoneController.text.trim().isNotEmpty ? int.parse(_phoneController.text.trim()) : null;
    List<String>? notes = _note.text.isEmpty ? null : [_note.text.trim()];

    final newCreditor = CreditorEntity(
      id: const Uuid().v4(),
      name: name,
      phoneNumber: phone,
      currentBalance: 0.0,
      notes: notes,
    );
    if (_addCreditorFormKey.currentState!.validate()) {
      ref.read(AddCreditorController.provider.notifier).add(creditor: newCreditor);
      if (mounted) {
        ref.read(GetAllCreditorsController.provider.notifier).getAll();
        context.pop();
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final nameExistController = ref.read(CreditorNameExistController.provider.notifier);
    ref.listen<AsyncValue<bool>>(CreditorNameExistController.provider, (previous, next) {
      _addCreditorFormKey.currentState!.validate();
    });
    return AlertDialog(
      title: const Text(AppConstants.newCreditorLabel, textAlign: TextAlign.center),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(8),
      ),
      actionsAlignment: MainAxisAlignment.start,
      content: SizedBox(
        width: 98.w,
        child: Form(
          key: _addCreditorFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: AppConstants.nameLabel),
                onChanged: (value) => nameExistController.nameExist(name: value),
                validator: (value) {
                  final currentState = ref.watch(CreditorNameExistController.provider);

                  if (currentState.isLoading) {
                    return checkingNameExist();
                  }

                  if (currentState.hasError) {
                    return validationError();
                  }

                  if (currentState.value == true) {
                    return validateNameAlreadyExist();
                  }
                  return validateEmptyField(value);
                },
              ),

              TextFormField(
                controller: _phoneController,
                decoration: const InputDecoration(labelText: AppConstants.phoneNumberLabel),
                validator: (value) => validatePhoneNumber(value),
                keyboardType: TextInputType.phone,
              ),
              TextFormField(
                controller: _note,
                decoration: const InputDecoration(labelText: AppConstants.noteLabel),
              ),
            ],
          ),
        ),
      ),

      actions: [
        TextButton(onPressed: _addNewCreditor, child: const Text(AppConstants.addLabel)),
      ],
    );
  }
}
