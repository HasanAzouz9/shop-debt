import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class GetCreditorsNotesController extends StateNotifier<AsyncValue<List<String>>> {
  static final provider = StateNotifierProvider.autoDispose
      .family<GetCreditorsNotesController, AsyncValue<List<String>>, String>(
        (ref, creditorId) => GetCreditorsNotesController(
          interface: ref.watch(CreditorsRepositoryImplementation.provider),
          creditorId: creditorId,
        ),
      );
  GetCreditorsNotesController({required this.interface, required this.creditorId}) : super(const AsyncLoading()) {
    getAll();
  }
  final CreditorsRepositoryInterface interface;
  final String creditorId;

  getAll() async {
    state = const AsyncLoading();
    final result = await interface.getNotes(creditorId: creditorId);
    if (!mounted) return;
    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
