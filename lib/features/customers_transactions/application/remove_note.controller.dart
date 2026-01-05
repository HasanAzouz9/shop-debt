import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

class RemoveNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<RemoveNoteController, AsyncValue<void>>(
    (ref) => RemoveNoteController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );
  RemoveNoteController({required this.repository}) : super(const AsyncData(null));
  final CustomersRepositoryInterface repository;

  removeNote({required String customerId, required String note}) async {
    state = const AsyncLoading();

    final result = await repository.removeNote(customerId: customerId, note: note);
    if (mounted) return;
    result.when(
      //TODO fix with dimissable
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
