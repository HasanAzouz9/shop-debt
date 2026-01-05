import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';
import 'package:shop_debts/features/creditors/application/edit_creditor.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';

import '../../application/get_all_creditors.controller.dart';

class AddCreditorPhoneNumberDialog extends ConsumerStatefulWidget {
  final CreditorEntity creditor;
  const AddCreditorPhoneNumberDialog({super.key, required this.creditor});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddCreditorPhoneNumberDialogState();
}

class _AddCreditorPhoneNumberDialogState extends ConsumerState<AddCreditorPhoneNumberDialog> with FormValidationMixin {
  final GlobalKey<FormState> _phoneFormKey = GlobalKey<FormState>();
  late TextEditingController _phoneController;
  late FocusNode _phoneFocus;

  @override
  void initState() {
    super.initState();
    _phoneController = TextEditingController();
    _phoneFocus = FocusNode();
  }

  @override
  void dispose() {
    _phoneController.dispose();
    _phoneFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(EditCreditorController.provider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          ref.read(GetAllCreditorsController.provider.notifier).getAll();
          context
            ..showToast(message: 'تمت العملية بنجاح', type: .success)
            ..pop();
        },
        error: (error, stackTrace) => context.showToast(message: error.getErrorMessage, type: .error),
      );
    });
    return AlertDialog(
      actionsAlignment: .center,
      title: Text(
        'أضف رقم هاتف ل ${widget.creditor.name}',
        textAlign: .center,
        style: context.textTheme.titleSmall,
      ),

      content: Form(
        key: _phoneFormKey,
        child: TextFormField(
          controller: _phoneController,
          focusNode: _phoneFocus,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(hintText: 'رقم الهاتف'),
          validator: (value) => validatePhoneNumber(value),
        ),
      ),

      actions: [
        TextButton(
          onPressed: () {
            if (_phoneFormKey.currentState!.validate()) {
              ref
                  .read(EditCreditorController.provider.notifier)
                  .edit(creditorId: widget.creditor.getId, phoneNumber: int.parse(_phoneController.text));
            }
          },
          child: const Text('أضف'),
        ),
      ],
    );
  }
}
