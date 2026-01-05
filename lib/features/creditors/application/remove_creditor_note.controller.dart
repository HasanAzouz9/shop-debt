import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class RemoveCreditorNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose
      .family<RemoveCreditorNoteController, AsyncValue<void>, String>(
        (ref, creditorId) => RemoveCreditorNoteController(
          interface: ref.watch(CreditorsRepositoryImplementation.provider),
          creditorId: creditorId,
        ),
      );
  RemoveCreditorNoteController({required this.interface, required this.creditorId}) : super(const AsyncLoading());
  final CreditorsRepositoryInterface interface;
  final String creditorId;

  remove({required String note}) async {
    state = const AsyncLoading();

    final result = await interface.removeNote(creditorId: creditorId, note: note);
    if (!mounted) return;
    result.when(
      success: (data) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
