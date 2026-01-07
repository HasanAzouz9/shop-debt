import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class RemoveCreditorNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose
      .family<RemoveCreditorNoteController, AsyncValue<void>, String>(
        (ref, creditorId) => RemoveCreditorNoteController(
          repository: ref.watch(CreditorsRepositoryImplementation.provider),
          creditorId: creditorId,
        ),
      );
  RemoveCreditorNoteController({required this.repository, required this.creditorId}) : super(const AsyncData(null));
  final CreditorsRepositoryInterface repository;
  final String creditorId;

  Future<bool> remove({required String note}) async {
    state = const AsyncLoading();

    final result = await repository.removeNote(creditorId: creditorId, note: note);
    if (!mounted) return false;
    return result.when(
      success: (data) {
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
