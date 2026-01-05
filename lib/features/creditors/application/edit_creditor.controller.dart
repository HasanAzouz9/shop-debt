import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class EditCreditorController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<EditCreditorController, AsyncValue<void>>(
    (ref) => EditCreditorController(interface: ref.watch(CreditorsRepositoryImplementation.provider)),
  );
  EditCreditorController({required this.interface}) : super(const AsyncData(null));
  final CreditorsRepositoryInterface interface;

  edit({required String creditorId, String? name, int? phoneNumber}) async {
    state = const AsyncLoading();

    final result = await interface.edit(creditorId: creditorId, name: name, phoneNumber: phoneNumber);
    if (!mounted) return;
    result.when(
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
