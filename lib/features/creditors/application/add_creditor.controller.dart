import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class AddCreditorController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider<AddCreditorController, AsyncValue<void>>(
    (ref) => AddCreditorController(interface: ref.watch(CreditorsRepositoryImplementation.provider)),
  );
  AddCreditorController({required this.interface}) : super(const AsyncData(null));
  final CreditorsRepositoryInterface interface;

  add({required CreditorEntity creditor}) async {
    state = const AsyncLoading();

    final result = await interface.add(creditor: creditor);
    result.when(
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
