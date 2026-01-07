import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

class AddCustomerNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose.family<AddCustomerNoteController, AsyncValue<void>, String>(
    (ref, customerId) => AddCustomerNoteController(
      repository: ref.watch(CustomersRemoteRepositoryImplementation.provider),
      customerId: customerId,
    ),
  );
  AddCustomerNoteController({required this.repository, required this.customerId}) : super(const AsyncData(null));
  final CustomersRepositoryInterface repository;
  final String customerId;
  addNote({required String note}) async {
    state = const AsyncLoading();
    final result = await repository.addNote(customerId: customerId, newNote: note);
    if (!mounted) return;
    result.when(
      success: (success) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
