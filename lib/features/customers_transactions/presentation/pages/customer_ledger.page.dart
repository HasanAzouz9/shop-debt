import 'package:flutter/material.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customers_transactions.page.dart';

import 'add_customer_transaction.page.dart';

class CustomerLedgerPage extends StatefulWidget {
  const CustomerLedgerPage({super.key});
  static const routeName = 'customer_ledger_page';
  static const routePath = '/';
  @override
  State<CustomerLedgerPage> createState() => _CustomerLedgerPageState();
}

class _CustomerLedgerPageState extends State<CustomerLedgerPage> {
  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: _controller,
      children: const [
        CustomersTransactionsPage(),
        AddCustomerTransactionPage(transactionType: .debt),
      ],
    );
  }
}
