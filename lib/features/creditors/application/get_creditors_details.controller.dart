// import 'package:riverpod/riverpod.dart';
// import 'package:shop_debts/features/creditors/domain/models/creditor_transaction.entity.dart';
// import 'package:shop_debts/features/creditors/domain/repositories/creditor_transactions.repository.interface.dart';
// import 'package:shop_debts/features/creditors/infrastructure/repositories/creditor_transactions.repository.implementation.dart';

// import '../../../core/exceptions_handler/app_exceptions.dart';

// class GetCreditorsDetailsController extends StateNotifier<AsyncValue<List<CreditorTransactionEntity>>> {
//   static final provider =
//       StateNotifierProvider<GetCreditorsDetailsController, AsyncValue<List<CreditorTransactionEntity>>>(
//         (ref) =>
//             GetCreditorsDetailsController(interface: ref.watch(CreditorTransactionsRepositoryImplementation.provider)),
//       );
//   GetCreditorsDetailsController({required this.interface}) : super(const AsyncLoading());
//   final CreditorTransactionsRepositoryInterface interface;

//   getCreditorsDetails() async {
//     state = const AsyncLoading();

//     final result = await interface.getCreditorsDetails();
//     result.when(
//       success: (data) => state = AsyncData(data),
//       failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
//     );
//   }
// }
