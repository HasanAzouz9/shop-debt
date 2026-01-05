import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

final customerProvider = FutureProvider.autoDispose.family<CustomerEntity, String>((ref, customerId) async {
  final repository = ref.watch(CustomersRemoteRepositoryImplementation.provider);
  final customers = await repository.getById(id: customerId);

  return customers.when(
    success: (customer) => customer,
    failure: (failure) => throw failure,
  );
});

class GetCustomerByIdController extends StateNotifier<AsyncValue<CustomerEntity>> {
  static final provider = StateNotifierProvider.autoDispose<GetCustomerByIdController, AsyncValue<CustomerEntity>>(
    (ref) => GetCustomerByIdController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );
  GetCustomerByIdController({required this.repository}) : super(const AsyncLoading());
  final CustomersRepositoryInterface repository;

  getCustomer({required String id}) async {
    state = const AsyncLoading();
    final result = await repository.getById(id: id);
    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
