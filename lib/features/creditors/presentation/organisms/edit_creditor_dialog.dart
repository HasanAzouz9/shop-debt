import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/creditors/application/edit_creditor.controller.dart';
import 'package:shop_debts/features/creditors/application/get_all_creditors.controller.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_card.dart';

import '../../../../core/extensions/context.extensions.dart';
import '../../application/creditor_name_exist.controller.dart';

class EditCreditorDialog extends ConsumerStatefulWidget {
  const EditCreditorDialog({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EditCreditorDialogState();
}

class _EditCreditorDialogState extends ConsumerState<EditCreditorDialog> with FormValidationMixin {
  final GlobalKey<FormState> _editFormKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late FocusNode _nameFocus;
  late FocusNode _phoneFocus;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _phoneController = TextEditingController();
    _nameFocus = FocusNode();
    _phoneFocus = FocusNode();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _nameFocus.dispose();
    _phoneFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditor = ref.watch(CreditorCard.creditorProvider);
    final nameExistController = ref.read(CreditorNameExistController.provider.notifier);
    ref.listen<AsyncValue<bool>>(CreditorNameExistController.provider, (previous, next) {
      _editFormKey.currentState!.validate();
    });
    ref.listen<AsyncValue<void>>(EditCreditorController.provider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          if (context.mounted) {
            ref.read(GetAllCreditorsController.provider.notifier).getAll();
            context
              ..showToast(message: 'تمت العملية بنجاح', type: .success)
              ..pop();
          }
        },
        error: (err, stack) {
          context.showToast(message: err.getErrorMessage, type: .error);
        },
      );
    });
    return AlertDialog(
      content: Form(
        key: _editFormKey,
        child: Padding(
          padding: context.padding16,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            spacing: 16,
            children: [
              TextFormField(
                controller: _nameController,
                focusNode: _nameFocus,
                decoration: const InputDecoration().copyWith(hintText: 'أدخل الاسم الجديد'),
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
                focusNode: _phoneFocus,
                keyboardType: .phone,
                decoration: const InputDecoration().copyWith(
                  hintText: 'أدخل رقم الهاتف الجديد',
                ),
                validator: (value) => validatePhoneNumber(value),
              ),
              TextButton(
                onPressed: () {
                  if (_editFormKey.currentState!.validate()) {
                    ref
                        .read(EditCreditorController.provider.notifier)
                        .edit(
                          creditorId: creditor.getId,
                          name: _nameController.text,
                          phoneNumber: _phoneController.text.isEmpty ? null : int.parse(_phoneController.text),
                        );
                  }
                },
                child: const Text('احفظ التعديلات'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
