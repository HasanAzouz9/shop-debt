import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/app_constants.dart';

import '../../application/customer.controller.dart';

final _searchTimerProvider = StateProvider<Timer?>((ref) => null);

class CustomersSearchBar extends ConsumerStatefulWidget {
  const CustomersSearchBar({super.key});
  static const Duration _debounceDuration = Duration(milliseconds: 100);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomersSearchBarState();
}

class _CustomersSearchBarState extends ConsumerState<CustomersSearchBar> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controllerNotifier = ref.read(CustomerController.provider.notifier);

    return SearchBar(
      elevation: const WidgetStatePropertyAll(0),
      controller: _controller,
      constraints: BoxConstraints.tight(const Size.fromHeight(50)),
      shape: const WidgetStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
      hintText: AppConstants.searchCustomerLabel,
      leading: const Icon(Icons.search),
      onChanged: (value) {
        final timerNotifier = ref.read(_searchTimerProvider.notifier);
        timerNotifier.state?.cancel();
        timerNotifier.state = Timer(CustomersSearchBar._debounceDuration, () {
          controllerNotifier.setFilterAndLoad(
            name: value.trim().isNotEmpty ? value.trim() : null,
          );
        });
      },
    );
  }
}
