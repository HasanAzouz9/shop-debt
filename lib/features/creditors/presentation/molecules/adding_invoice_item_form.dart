import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/form_validation.mixin.dart';

import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../application/add_items_controller.dart';

final addingItemsFromKey = GlobalKey<FormState>();

class AddingInvoiceItemForm extends ConsumerStatefulWidget {
  const AddingInvoiceItemForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddingInvoiceItemFormState();
}

class _AddingInvoiceItemFormState extends ConsumerState<AddingInvoiceItemForm> with FormValidationMixin {
  late TextEditingController _nameController;
  late TextEditingController _quantityController;
  late TextEditingController _priceController;

  late FocusNode _nameFocusNode;
  late FocusNode _quantityFocusNode;
  late FocusNode _priceFocusNode;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _quantityController = TextEditingController();
    _priceController = TextEditingController();

    _nameFocusNode = FocusNode();
    _quantityFocusNode = FocusNode();
    _priceFocusNode = FocusNode();
    _nameFocusNode.requestFocus();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _quantityController.dispose();
    _priceController.dispose();
    _nameFocusNode.dispose();
    _quantityFocusNode.dispose();
    _priceFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final addItemController = ref.read(AddItemsController.provider.notifier);
    ref.listen(AddItemsController.provider, (previous, next) {
      if (next.addingSuccess) {
        _nameController.clear();
        _quantityController.clear();
        _priceController.clear();
        _nameFocusNode.requestFocus();
        addItemController.resetAddingItemSuccess();
      }
    });
    return Padding(
      padding: context.padding16,
      child: Form(
        key: addingItemsFromKey,
        child: Column(
          mainAxisSize: .min,
          spacing: 16,
          children: [
            TextFormField(
              controller: _nameController,
              focusNode: _nameFocusNode,
              textInputAction: .next,
              onFieldSubmitted: (_) => _quantityFocusNode.requestFocus(),
              validator: (value) => validateEmptyField(value),
              onChanged: (value) => addItemController.setItemName(name: value),
              decoration: const InputDecoration().copyWith(
                hint: const Text('اسم المادة'),
                contentPadding: context.paddingHorizontal8,
              ),
            ),
            Row(
              spacing: 16,
              children: [
                Flexible(
                  flex: 1,
                  child: TextFormField(
                    controller: _quantityController,
                    focusNode: _quantityFocusNode,
                    textInputAction: .next,
                    onFieldSubmitted: (_) => _priceFocusNode.requestFocus(),
                    keyboardType: .number,
                    validator: (value) => validateIntInput(value),
                    onChanged: (value) => addItemController.setItemQuantity(quantity: value),
                    decoration: const InputDecoration().copyWith(
                      hint: const Text('الكمية'),
                      contentPadding: context.paddingHorizontal8,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: TextFormField(
                    controller: _priceController,
                    focusNode: _priceFocusNode,

                    textInputAction: .next,
                    onFieldSubmitted: (_) => _nameFocusNode.requestFocus(),
                    keyboardType: .number,
                    validator: (value) => validateDoubleInput(value),
                    onChanged: (value) => addItemController.setItemPrice(price: value),
                    decoration: const InputDecoration().copyWith(
                      hint: const Text('السعر الافرادي'),
                      contentPadding: context.paddingHorizontal8,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
