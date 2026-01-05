// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';

// import '../../../../config/const/app_constants.dart';
// import '../../application/get_all_transaction.controller.dart';
// import '../molecules/customers_transactions_date_filter_button.dart';

// //TODO fix filtering

// class CustomersTransactionsFilteringOptions extends ConsumerWidget {
//   final String? customerId;
//   const CustomersTransactionsFilteringOptions({super.key, this.customerId});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final transactionsController = ref.read(GetAllTransactionsController.provider(customerId).notifier);
//     return Row(
//       children: [
//         CustomersTransactionsDateFilterButton(customerId: customerId),
//         TextButton(
//           onPressed: () => transactionsController.setTypeFilter(filter: .debt),
//           child: const Text(AppConstants.debtsLabel),
//         ),
//         TextButton(
//           onPressed: () => transactionsController.setTypeFilter(filter: .payment),
//           child: const Text(AppConstants.paymentsLabel),
//         ),
//         TextButton(
//           onPressed: () => transactionsController.setTypeFilter(filter: null),
//           child: const Text(AppConstants.allLabel),
//         ),
//       ],
//     );
//   }
// }
