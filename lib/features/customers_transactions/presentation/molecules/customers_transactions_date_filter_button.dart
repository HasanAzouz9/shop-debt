// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:go_router/go_router.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:shop_debts/config/const/app_constants.dart';
// import 'package:shop_debts/features/customers_transactions/application/get_all_transaction.controller.dart';

// final _hasPickedDateProvider = StateProvider.autoDispose.family<bool, String?>((ref, customerId) => false);

// class CustomersTransactionsDateFilterButton extends ConsumerWidget {
//   final String? customerId;
//   const CustomersTransactionsDateFilterButton({super.key, this.customerId});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final hasPickedDate = ref.watch(_hasPickedDateProvider(customerId));
//     final hasPickedDateState = ref.read(_hasPickedDateProvider(customerId).notifier);
//     final transactionsController = ref.read(GetAllTransactionsController.provider(customerId).notifier);
//     return hasPickedDate
//         ? IconButton(
//             onPressed: () {
//               hasPickedDateState.state = false;
//               transactionsController.setDateFilter(filter: null);
//             },
//             icon: const Icon(Icons.close),
//           )
//         : TextButton(
//             onPressed: () => showDialog(
//               context: context,
//               builder: (context) {
//                 DateTime pickedDate = DateTime.now();
//                 return AlertDialog(
//                   title: const Text(AppConstants.filterByDateLabel, textAlign: TextAlign.center),
//                   actionsAlignment: MainAxisAlignment.start,
//                   content: SizedBox(
//                     width: 98.w,
//                     height: 30.h,
//                     child: CupertinoDatePicker(
//                       maximumDate: DateTime.now(),
//                       initialDateTime: DateTime.now().subtract(const Duration(days: 1)),
//                       mode: CupertinoDatePickerMode.date,
//                       onDateTimeChanged: (v) => pickedDate = v,
//                     ),
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () {
//                         transactionsController.setDateFilter(filter: pickedDate);
//                         context.pop();
//                         hasPickedDateState.state = true;
//                       },
//                       child: const Text(AppConstants.filterLabel),
//                     ),
//                   ],
//                 );
//               },
//             ),
//             child: const Text(AppConstants.dateLabel),
//           );
//   }
// }
