// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shop_debts/features/common/application/exchange_rate_converter.dart';
// import 'package:shop_debts/features/customers_transactions/presentation/pages/customers_transactions.page.dart';

// import 'set_exchange_rate.page.dart';

// class HomePage extends ConsumerWidget {
//   const HomePage({super.key});
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final exchangeRateConverterState = ref.watch(ExchangeRateConverter.provider);
//     return exchangeRateConverterState.hasSetRate ? const CustomersTransactionsPage() : const SetExchangeRatePage();
//   }
// }
