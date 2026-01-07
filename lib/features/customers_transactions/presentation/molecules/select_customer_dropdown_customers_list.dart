import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/config/const/assets_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/double.extension.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';

import '../../application/customer.controller.dart';

class SelectCustomerDropdownCustomersList extends ConsumerStatefulWidget {
  final Function(String name, String id) onCustomerSelected;
  const SelectCustomerDropdownCustomersList({super.key, required this.onCustomerSelected});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SelectCustomerDropdownCustomersListState();
}

class _SelectCustomerDropdownCustomersListState extends ConsumerState<SelectCustomerDropdownCustomersList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.95) {
      final state = ref.read(CustomerController.provider);

      state.maybeWhen(
        data: (data) {
          if (data.hasMore && !data.isLoadingMore) {
            ref.read(CustomerController.provider.notifier).loadNextPage();
          }
        },
        orElse: () {},
      );
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final customersAsync = ref.watch(CustomerController.provider);

    return Expanded(
      child: customersAsync.when(
        data: (customersList) {
          return customersList.customers.isEmpty
              ? Image.asset(AssetsConstants.emptyCat)
              : ListView.builder(
                  padding: EdgeInsets.zero,
                  itemCount: customersList.customers.length + (customersList.hasMore ? 1 : 0),
                  controller: _scrollController,
                  itemBuilder: (ctx, i) {
                    if (i == customersList.customers.length) {
                      return Center(child: Image.asset(AssetsConstants.loadingCat));
                    }
                    return Padding(
                      padding: context.padding8,
                      child: InkWell(
                        onTap: () {
                          widget.onCustomerSelected(customersList.customers[i].name, customersList.customers[i].getId);
                        },
                        child: DefaultTextStyle(
                          style: context.textTheme.titleMedium!,
                          child: Row(
                            children: [
                              Expanded(child: Text(customersList.customers[i].name)),
                              Text(customersList.customers[i].currentBalance.compact()),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
        },
        error: (error, stackTrace) => ErrorMessageWithAction(
          errorMessage: error.getErrorMessage,
          action: () => ref.invalidate(CustomerController.provider),
        ),
        loading: () => Center(child: Image.asset(AssetsConstants.loadingCat)),
      ),
    );
  }
}
