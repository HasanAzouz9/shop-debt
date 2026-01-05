import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/invoices.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/invoices.Repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class GetInvoiceByIdController extends StateNotifier<AsyncValue<InvoiceEntity>> {
  static final provider = StateNotifierProvider.autoDispose
      .family<GetInvoiceByIdController, AsyncValue<InvoiceEntity>, int?>(
        (ref, id) => GetInvoiceByIdController(
          interface: ref.watch(InvoicesRepositoryImplementation.provider),
          id: id,
        ),
      );

  final InvoicesRepositoryInterface interface;
  final int? id;

  GetInvoiceByIdController({required this.interface, required this.id}) : super(const AsyncLoading()) {
    get();
  }

  Future<void> get() async {
    if (id == null) return;

    state = const AsyncLoading();

    final result = await interface.getById(id: id!);

    if (!mounted) return;

    result.when(
      success: (data) => state = AsyncData(data),
      failure: (failure) => state = AsyncError(
        AppException.handle(failure),
        StackTrace.current,
      ),
    );
  }
}
