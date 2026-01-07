import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/centered_loading_message.dart';
import 'package:shop_debts/features/common/presentation/molecules/empty_cat_card.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';
import 'package:shop_debts/features/common/presentation/molecules/loading_cat_card.dart';
import 'package:shop_debts/features/customers_transactions/application/customer.controller.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';

import 'customers_list_card.dart';

class CustomersList extends ConsumerStatefulWidget {
  const CustomersList({super.key});
  static final customerProvider = Provider<CustomerEntity>(
    (ref) => throw UnimplementedError(),
  );
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomersListState();
}

class _CustomersListState extends ConsumerState<CustomersList> {
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
    final customersList = ref.watch(CustomerController.provider);

    return customersList.when(
      data: (customers) {
        return customers.customers.isEmpty
            ? const EmptyCatCard()
            : ListView.builder(
                controller: _scrollController,
                itemCount: customers.customers.length + (customers.hasMore ? 1 : 0),
                itemBuilder: (ctx, i) {
                  if (i == customers.customers.length) return const CenteredLoadingMessage();
                  return ProviderScope(
                    overrides: [CustomersList.customerProvider.overrideWithValue(customers.customers[i])],
                    child: const CustomersListCard(),
                  );
                },
              );
      },
      error: (error, stackTrace) => ErrorMessageWithAction(
        errorMessage: error.getErrorMessage,
        action: () => ref.invalidate(CustomerController.provider),
      ),
      loading: () => const LoadingCatCard(),
    );
  }
}
