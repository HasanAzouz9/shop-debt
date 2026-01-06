import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/helpers/de_bouncer.dart';
import 'package:shop_debts/features/creditors/application/get_all_creditors.controller.dart';

class CreditorsSearchBar extends ConsumerStatefulWidget {
  const CreditorsSearchBar({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreditorsSearchBarState();
}

class _CreditorsSearchBarState extends ConsumerState<CreditorsSearchBar> {
  late FocusNode _searchFocus;
  late TextEditingController _controller;

  final DeBouncer _deBouncer = DeBouncer();
  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _searchFocus = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _searchFocus.dispose();
    _deBouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditorController = ref.read(GetAllCreditorsController.provider.notifier);
    return SearchBar(
      controller: _controller,
      focusNode: _searchFocus,
      hintText: AppConstants.searchCreditorsLabel,
      leading: const Icon(Icons.search),
      onTapOutside: (event) => _searchFocus.unfocus(),
      onChanged: (value) => _deBouncer.run(() => creditorController.getAll(name: value)),
    );
  }
}
