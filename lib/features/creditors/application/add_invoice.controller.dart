import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/invoices.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/invoices.Repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class AddInvoiceController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider.autoDispose<AddInvoiceController, AsyncValue<void>>(
    (ref) => AddInvoiceController(interface: ref.watch(InvoicesRepositoryImplementation.provider)),
  );
  AddInvoiceController({required this.interface}) : super(const AsyncData(null));
  final InvoicesRepositoryInterface interface;

  String? note;

  void setNote({required String note}) {
    this.note = note;
  }

  add({required InvoiceEntity invoice}) async {
    state = const AsyncLoading();

    final result = await interface.add(invoice: invoice.copyWith(note: note));
    result.when(
      success: (_) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
