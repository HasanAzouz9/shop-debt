import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/customers_transactions/application/customer.controller.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';
import 'package:uuid/uuid.dart';

import '../../application/customer_form_state.controller.dart';

//TODO add note text field

class CustomerFormDialog extends ConsumerStatefulWidget {
  final CustomerEntity? existingCustomer;

  const CustomerFormDialog({super.key, this.existingCustomer});

  @override
  ConsumerState<CustomerFormDialog> createState() => _CustomerFormDialogState();
}

class _CustomerFormDialogState extends ConsumerState<CustomerFormDialog> with FormValidationMixin {
  late TextEditingController _nameController;
  late TextEditingController _phoneController;
  late TextEditingController _note;
  final _formKey = GlobalKey<FormState>();

  bool get isEdit => widget.existingCustomer != null;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.existingCustomer?.name);
    _phoneController = TextEditingController(text: widget.existingCustomer?.phoneNumber);
    _note = TextEditingController(text: widget.existingCustomer?.notes.join(', '));
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _note.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(CustomerFormController.provider);
    final notifier = ref.read(CustomerFormController.provider.notifier);

    ref.listen<AsyncValue<void>>(
      CustomerFormController.provider.select((s) => s.submissionStatus),
      (prev, next) {
        next.whenOrNull(
          error: (err, _) => context.showToast(message: err.getErrorMessage, type: .error),
          data: (_) {
            context.showToast(
              message: isEdit ? 'تم التعديل بنجاح' : 'تمت الإضافة بنجاح',
              type: .success,
            );
            ref.read(CustomerController.provider.notifier).loadFirstPage();
            context.pop();
          },
        );
      },
    );

    return AlertDialog(
      title: Text(isEdit ? AppConstants.editNameLabel : AppConstants.newCustomerLabel),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: const InputDecoration(labelText: AppConstants.nameLabel),
              onChanged: (val) => notifier.checkName(val, currentName: widget.existingCustomer?.name),
              autovalidateMode: AutovalidateMode.onUserInteraction,
              validator: (value) {
                if (state.nameExistsStatus.value == true) return validateNameAlreadyExist();
                return validateEmptyField(value);
              },
            ),
            const SizedBox(height: 16),
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
                    final customer = CustomerEntity(
                      id: isEdit ? widget.existingCustomer!.getId : const Uuid().v4(),
                      name: _nameController.text.trim(),
                      phoneNumber: _phoneController.text.trim(),
                      notes: _note.text.isEmpty ? [] : [_note.text.trim()],
                      currentBalance: widget.existingCustomer?.currentBalance ?? 0.0,
                    );
                    notifier.submit(customer: customer, isEdit: isEdit);
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
