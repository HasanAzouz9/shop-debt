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
  final DeBouncer _deBouncer = DeBouncer();
  @override
  void initState() {
    super.initState();
    _searchFocus = FocusNode();
  }

  @override
  void dispose() {
    _searchFocus.dispose();
    _deBouncer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditorController = ref.read(GetAllCreditorsController.provider.notifier);
    return TextField(
      focusNode: _searchFocus,
      onTapOutside: (event) => _searchFocus.unfocus(),
      decoration: const InputDecoration(hint: Text(AppConstants.searchCreditorsLabel), suffixIcon: Icon(Icons.search)),
      onChanged: (value) => _deBouncer.run(() => creditorController.getAll(name: value)),
    );
  }
}
