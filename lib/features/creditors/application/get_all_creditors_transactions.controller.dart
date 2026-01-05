import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor_transaction.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditor_transactions.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditor_transactions.repository.implementation.dart';
import 'package:shop_debts/features/customers_transactions/domain/state/pagination_state.dart';

import '../../../core/enum/transaction_type.enum.dart';

class GetAllCreditorsTransactionsController extends StateNotifier<PaginationState<CreditorTransactionEntity>> {
  static final provider = StateNotifierProvider.family
      .autoDispose<GetAllCreditorsTransactionsController, PaginationState<CreditorTransactionEntity>, String?>(
        (ref, creditorId) => GetAllCreditorsTransactionsController(
          interface: ref.watch(CreditorTransactionsRepositoryImplementation.provider),
          creditorId: creditorId,
        ),
      );
  GetAllCreditorsTransactionsController({required this.interface, this.creditorId})
    : super(const PaginationState.initial()) {
    loadFirstPage();
  }

  final CreditorTransactionsRepositoryInterface interface;
  final String? creditorId;

  TransactionType? typeFilter;

  setTypeFilter({required TransactionType? filter}) {
    typeFilter = filter;
    loadFirstPage();
  }

  loadFirstPage() async {
    state = const PaginationState.initial();

    final result = await interface.getAll(lastCursor: null, type: typeFilter, creditorId: creditorId);
    if (!mounted) return;

    result.when(
      success: (data) => state = PaginationState.data(data: data, hasMore: data.isNotEmpty, isLoadingMore: false),
      failure: (error) => state = PaginationState.error(error: AppException.handle(error)),
    );
  }

  loadNextPage() async {
    final currentState = state.mapOrNull(data: (data) => data);
    if (currentState == null || currentState.isLoadingMore || !currentState.hasMore) return;

    state = currentState.copyWith(isLoadingMore: true);

    final lastCursor = currentState.data.isEmpty ? null : currentState.data.last.getId;

    final result = await interface.getAll(lastCursor: lastCursor, type: typeFilter, creditorId: creditorId);
    if (!mounted) return;

    result.when(
      success: (newData) => state = currentState.copyWith(
        data: [...currentState.data, ...newData],
        hasMore: newData.isNotEmpty,
        isLoadingMore: false,
      ),
      failure: (error) => state = currentState.copyWith(isLoadingMore: false, error: AppException.handle(error)),
    );
  }
}
