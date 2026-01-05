import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

import '../domain/models/customer.entity.dart';

class AddCustomerController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<AddCustomerController, AsyncValue<void>>(
    (ref) => AddCustomerController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );
  AddCustomerController({required this.repository}) : super(const AsyncData(null));

  final CustomersRepositoryInterface repository;

  add({required CustomerEntity customer}) async {
    state = const AsyncLoading();
    final result = await repository.add(customer: customer);
    if (!mounted) return;
    result.when(
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
