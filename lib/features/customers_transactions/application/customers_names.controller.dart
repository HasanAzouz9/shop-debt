// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
// import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
// import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

// class CustomersNamesController extends StateNotifier<AsyncValue<List<String>>> {
//   static final provider = StateNotifierProvider.autoDispose<CustomersNamesController, AsyncValue<List<String>>>(
//     (ref) => CustomersNamesController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
//   );
//   CustomersNamesController({required this.repository}) : super(const AsyncLoading()) {
//     getCustomersNames();
//   }
//   final CustomersRepositoryInterface repository;

//   getCustomersNames() async {
//     state = const AsyncLoading();
//     final result = await repository.getCustomersNames();
//     if (!mounted) return;
//     result.when(
//       success: (data) => state = AsyncData(data),
//       failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
//     );
//   }
// }
