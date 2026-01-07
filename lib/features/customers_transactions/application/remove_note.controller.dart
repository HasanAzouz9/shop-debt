import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

class RemoveNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose.family<RemoveNoteController, AsyncValue<void>, String>(
    (ref, customerId) => RemoveNoteController(
      repository: ref.watch(CustomersRemoteRepositoryImplementation.provider),
      customerId: customerId,
    ),
  );
  RemoveNoteController({required this.repository, required this.customerId}) : super(const AsyncData(null));
  final CustomersRepositoryInterface repository;
  final String customerId;

  Future<bool> removeNote({required String note}) async {
    state = const AsyncLoading();
    final result = await repository.removeNote(customerId: customerId, note: note);

    if (!mounted) return false;

    return result.when(
      success: (_) {
        state = const AsyncData(null);
        return true;
      },
      failure: (failure) {
        state = AsyncError(AppException.handle(failure), StackTrace.current);
        return false;
      },
    );
  }
}
