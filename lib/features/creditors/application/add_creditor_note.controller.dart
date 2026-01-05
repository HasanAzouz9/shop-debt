import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class AddCreditorNoteController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose.family<AddCreditorNoteController, AsyncValue<void>, String>(
    (ref, creditorId) => AddCreditorNoteController(
      interface: ref.watch(CreditorsRepositoryImplementation.provider),
      creditorId: creditorId,
    ),
  );
  AddCreditorNoteController({required this.interface, required this.creditorId}) : super(const AsyncData(null));
  final CreditorsRepositoryInterface interface;
  final String creditorId;

  add({required String note}) async {
    state = const AsyncLoading();

    final result = await interface.addNote(creditorId: creditorId, newNote: note);
    result.when(
      success: (data) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
