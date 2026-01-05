import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/features/customers_transactions/presentation/molecules/customers_transactions_list.dart';
import 'package:shop_debts/features/customers_transactions/presentation/organisms/customers_transactions_options.dart';

import '../../../../config/const/app_constants.dart';

class CustomersTransactionsPage extends StatelessWidget {
  const CustomersTransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppConstants.transactionsLabel),
        centerTitle: true,
        forceMaterialTransparency: true,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(4.h),
          child: const CustomersTransactionsOptions(),
        ),
      ),
      body: const CustomersTransactionsList(),
    );
  }
}
