import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

class AddCustomerNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose(
    (ref) => AddCustomerNoteController(
      repository: ref.watch(CustomersRemoteRepositoryImplementation.provider),
    ),
  );
  AddCustomerNoteController({required this.repository}) : super(const AsyncData(null));
  final CustomersRepositoryInterface repository;

  addNote({required String customerId, required String note}) async {
    state = const AsyncLoading();
    if (!mounted) return;
    final result = await repository.addNote(customerId: customerId, newNote: note);
    result.when(
      success: (success) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
