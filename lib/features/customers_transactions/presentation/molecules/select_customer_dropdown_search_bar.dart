import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/helpers/de_bouncer.dart';

import '../../../../config/const/app_constants.dart';
import '../../application/customer.controller.dart';

class SelectCustomerDropdownSearchBar extends ConsumerStatefulWidget {
  const SelectCustomerDropdownSearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerSearchOverlayContentState();
}

class _CustomerSearchOverlayContentState extends ConsumerState<SelectCustomerDropdownSearchBar> {
  late TextEditingController _searchController;
  late FocusNode _searchFocus;
  final DeBouncer _deBouncer = DeBouncer();

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
    _searchFocus = FocusNode();
    _searchFocus.requestFocus();
  }

  @override
  void dispose() {
    _searchController.dispose();
    _searchFocus.unfocus();
    _deBouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customerController = ref.read(CustomerController.provider.notifier);
    return SearchBar(
      controller: _searchController,
      focusNode: _searchFocus,
      hintText: AppConstants.searchCustomerLabel,
      leading: const Icon(Icons.search),
      onChanged: (value) => _deBouncer.run(() => customerController.setFilterAndLoad(name: value)),
    );
  }
}
