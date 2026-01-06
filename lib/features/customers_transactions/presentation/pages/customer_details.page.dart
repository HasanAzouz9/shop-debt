import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/enum/customer_details.enum.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';

import '../../application/customer_provider.dart';
import '../templates/customer_info.dart';
import '../templates/customer_details_add_transaction.dart';
import '../organisms/customer_details_page_app_bar.dart';
import '../organisms/customer_details_page_error_app_bar.dart';
import '../organisms/customer_details_page_loading_app_bar.dart';
import '../templates/customer_transactions_list.dart';

class CustomerDetailsPage extends ConsumerStatefulWidget {
  final CustomerEntity customer;
  const CustomerDetailsPage({super.key, required this.customer});
  static const routePath = '/customer_details_page';
  static const routeName = 'customer_details_page';
  static final pageIndexProvider = StateProvider.autoDispose<int>((ref) => 0);
  static final currentCustomerIdProvider = Provider.autoDispose<String>((ref) => throw UnimplementedError());

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomerDetailsPageState();
}

class _CustomerDetailsPageState extends ConsumerState<CustomerDetailsPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final asyncCustomer = ref.watch(customerProvider(widget.customer.getId));

    return SafeArea(
      child: ProviderScope(
        overrides: [CustomerDetailsPage.currentCustomerIdProvider.overrideWithValue(widget.customer.getId)],

        child: Scaffold(
          appBar: asyncCustomer.when(
            data: (customer) => CustomerDataAppBar(customer: customer, pageController: _pageController),
            error: (error, stackTrace) => const CustomerErrorAppBar(),
            loading: () => const CustomerLoadingAppBar(),
          ),
          body: PageView(
            controller: _pageController,
            onPageChanged: (value) => ref.read(CustomerDetailsPage.pageIndexProvider.notifier).state = value,
            children: CustomerDetailsPageEnum.values.map((pageType) {
              return switch (pageType) {
                .info => const CustomerInfo(),
                .transactions => const CustomerTransactionsList(),
                .addTransaction => const CustomerDetailsAddTransaction(),
              };
            }).toList(),
          ),
          resizeToAvoidBottomInset: false,
        ),
      ),
    );
  }
}
