import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';

import '../molecules/select_customer_dropdown_customers_list.dart';
import '../molecules/select_customer_dropdown_search_bar.dart';

class SelectCustomerDropdown extends ConsumerStatefulWidget {
  final void Function(String) onSelect;
  const SelectCustomerDropdown({super.key, required this.onSelect});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SelectCustomerDropdownState();
}

class _SelectCustomerDropdownState extends ConsumerState<SelectCustomerDropdown> {
  late TextEditingController _selectedCustomerController;
  OverlayEntry? _overlayEntry;
  late LayerLink _layerLink;

  @override
  void initState() {
    super.initState();
    _selectedCustomerController = TextEditingController(text: AppConstants.chooseCustomerLabel);
    _layerLink = LayerLink();
  }

  @override
  void dispose() {
    _selectedCustomerController.dispose();
    super.dispose();
  }

  void _toggleOverlay() {
    if (_overlayEntry == null) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context).insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _overlayEntry = null;

      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  void _handleCustomerSelection(String name, String id) {
    _selectedCustomerController.text = name;
    widget.onSelect(id);
    _toggleOverlay();
  }

  OverlayEntry _createOverlayEntry() {
    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    return OverlayEntry(
      builder: (context) => Positioned(
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0.0, size.height + 8.0),
          child: Material(
            elevation: 0,
            borderRadius: context.radius8,
            child: Container(
              constraints: BoxConstraints(maxHeight: 35.h),
              decoration: BoxDecoration(
                color: context.colorScheme.secondaryContainer,
                borderRadius: context.radius8,
              ),
              child: Padding(
                padding: context.padding8,
                child: Column(
                  children: [
                    const SelectCustomerDropdownSearchBar(),
                    SelectCustomerDropdownCustomersList(onCustomerSelected: _handleCustomerSelection),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: TextField(
        controller: _selectedCustomerController,
        readOnly: true,
        decoration: const InputDecoration().copyWith(
          suffixIcon: Icon(_overlayEntry == null ? Icons.arrow_drop_down : Icons.arrow_drop_up),
        ),
        onTap: () => _toggleOverlay(),
      ),
    );
  }
}
