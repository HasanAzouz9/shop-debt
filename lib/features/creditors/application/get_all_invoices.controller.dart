import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/invoices.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/invoices.Repository.implementation.dart';
import 'package:shop_debts/features/customers_transactions/domain/state/pagination_state.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class GetAllInvoicesController extends StateNotifier<PaginationState<InvoiceEntity>> {
  static final provider = StateNotifierProvider.autoDispose<GetAllInvoicesController, PaginationState<InvoiceEntity>>(
    (ref) => GetAllInvoicesController(interface: ref.watch(InvoicesRepositoryImplementation.provider)),
  );
  GetAllInvoicesController({required this.interface}) : super(const PaginationState.initial()) {
    loadFirstPage();
  }
  final InvoicesRepositoryInterface interface;

  String? _itemSearchQuery;

  setItemSearchQuery({required String query}) {
    _itemSearchQuery = query;
    loadFirstPage();
  }

  loadFirstPage() async {
    state = const PaginationState.initial();
    final result = await interface.getAll(itemName: _itemSearchQuery);

    result.when(
      success: (data) => state = PaginationState.data(data: data, hasMore: data.isNotEmpty, isLoadingMore: false),
      failure: (failure) => state = PaginationState.error(error: AppException.handle(failure)),
    );
  }

  loadNextPage() async {
    final currentState = state.mapOrNull(data: (data) => data);

    if (currentState == null || currentState.isLoadingMore || !currentState.hasMore) {
      return;
    }

    final lastCursor = currentState.data.isEmpty ? null : currentState.data.last.getId;

    final result = await interface.getAll(lastCursor: lastCursor, itemName: _itemSearchQuery);

    result.when(
      success: (data) => state = currentState.copyWith(
        data: [...currentState.data, ...data],
        hasMore: data.isNotEmpty,
        isLoadingMore: false,
      ),

      failure: (failure) => state = currentState.copyWith(error: AppException.handle(failure)),
    );
  }
}
