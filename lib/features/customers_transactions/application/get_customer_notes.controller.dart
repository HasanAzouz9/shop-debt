import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class GetCustomerNotesController extends StateNotifier<AsyncValue<List<String>>> {
  static final provider = StateNotifierProvider.autoDispose
      .family<GetCustomerNotesController, AsyncValue<List<String>>, String>(
        (ref, customerId) => GetCustomerNotesController(
          repository: ref.watch(CustomersRemoteRepositoryImplementation.provider),
          customerId: customerId,
        ),
      );
  GetCustomerNotesController({required this.repository, required this.customerId}) : super(const AsyncLoading()) {
    getNotes();
  }
  final CustomersRepositoryInterface repository;
  final String customerId;

  getNotes() async {
    state = const AsyncLoading();

    final result = await repository.getNotes(customerId: customerId);
    if (!mounted) return;
    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
