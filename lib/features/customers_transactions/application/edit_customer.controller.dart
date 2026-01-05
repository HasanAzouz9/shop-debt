import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

class EditCustomerController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<EditCustomerController, AsyncValue<void>>(
    (ref) => EditCustomerController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );
  EditCustomerController({required this.repository}) : super(const AsyncData(null));

  final CustomersRepositoryInterface repository;

  edit({required String customerId, String? newName, String? newPhoneNumber}) async {
    state = const AsyncLoading();
    final result = await repository.edit(
      customerId: customerId,
      newName: newName,
      newPhoneNumber: newPhoneNumber,
    );
    if (!mounted) return;
    result.when(
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
