// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:responsive_sizer/responsive_sizer.dart';
// import 'package:shop_debts/core/extensions/context.extensions.dart';
// import 'package:shop_debts/core/helpers/calculator_handler.dart';
// import 'package:shop_debts/features/common/presentation/molecules/calculator_button.dart';
// import 'package:shop_debts/features/customers_transactions/application/adding_transaction_state.controller.dart';

// class Calculator extends ConsumerWidget {
//   const Calculator({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final input = ref.watch(AddingTransactionStateController.provider).calculatorInput;
//     return Directionality(
//       textDirection: TextDirection.ltr,
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         spacing: 10,
//         children: [
//           // Spacer(),
//           Container(
//             width: 98.w,

//             height: 12.h,

//             padding: const EdgeInsets.all(8),

//             decoration: const BoxDecoration().copyWith(
//               border: Border.all(color: context.colorScheme.primary),

//               borderRadius: BorderRadius.circular(8),
//             ),

//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,

//               spacing: 10,

//               children: [
//                 Align(
//                   alignment: Alignment.center,

//                   child: Text(
//                     'القيمة: ${ref.watch(AddingTransactionStateController.provider).transaction.amount.toStringAsFixed(1)}',

//                     style: const TextStyle().copyWith(
//                       fontSize: 22,

//                       fontWeight: FontWeight.w400,
//                     ),
//                   ),
//                 ),

//                 Text(input, style: const TextStyle().copyWith(fontSize: 18)),
//               ],
//             ),
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '1'),
//                 number: '1',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '2'),
//                 number: '2',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '3'),
//                 number: '3',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '/'),
//                 number: '/',
//               ),
//             ],
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '4'),
//                 number: '4',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '5'),
//                 number: '5',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '6'),
//                 number: '6',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, 'x'),
//                 number: 'x',
//               ),
//             ],
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '7'),
//                 number: '7',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '8'),
//                 number: '8',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '9'),
//                 number: '9',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '-'),
//                 number: '-',
//               ),
//             ],
//           ),

//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '\u2190'),
//                 number: '\u2190',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '0'),
//                 number: '0',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '.'),
//                 number: '.',
//               ),
//               CalculatorButton(
//                 onTap: () => CalculatorHandler.handleButtonPress(ref, '+'),
//                 number: '+',
//                 isPlus: true,
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
