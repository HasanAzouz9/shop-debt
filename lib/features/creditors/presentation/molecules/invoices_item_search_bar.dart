import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/creditors/application/get_all_invoices.controller.dart';

class InvoicesItemSearchBar extends ConsumerStatefulWidget {
  const InvoicesItemSearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InvoicesItemSearchBarState();
}

class _InvoicesItemSearchBarState extends ConsumerState<InvoicesItemSearchBar> {
  late TextEditingController _searchController;
  late FocusNode _searchFocus;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchFocus = FocusNode();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final invoiceController = ref.read(GetAllInvoicesController.provider.notifier);
    return Padding(
      padding: context.padding16,
      child: TextFormField(
        controller: _searchController,
        focusNode: _searchFocus,
        decoration: const InputDecoration().copyWith(
          hintText: AppConstants.searchItemsLabel,
          prefixIcon: AppIconButton(
            icon: Icons.search,
            onTap: () {
              if (_searchController.text.isNotEmpty) {
                invoiceController.setItemSearchQuery(query: _searchController.text);
              }
            },
          ),
          suffixIcon: AppIconButton(
            icon: Icons.clear,
            onTap: () {
              _searchController.clear();
              _searchFocus.unfocus();
              invoiceController.loadFirstPage();
            },
          ),
        ),
      ),
    );
  }
}
