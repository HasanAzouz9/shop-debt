import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/transactions.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/domain/state/pagination_state.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/transactions_remote.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../domain/state/customer_transactions_filter.state.dart';

class GetAllTransactionsController extends StateNotifier<PaginationState<TransactionEntity>> {
  static final provider =
      StateNotifierProvider.family<GetAllTransactionsController, PaginationState<TransactionEntity>, String?>(
        (ref, customerFilter) => GetAllTransactionsController(
          ref.watch(TransactionsRemoteRepositoryImplementation.provider),
          customerFilter,
        ),
      );
  final TransactionsRepositoryInterface repository;
  final String? customerFilter;

  GetAllTransactionsController(this.repository, this.customerFilter) : super(const PaginationState.initial()) {
    loadFirstPage();
  }

  CustomerTransactionsFilterState? filter;

  setFilter({required CustomerTransactionsFilterState filterState}) {
    filter = filterState;
    loadFirstPage();
  }

  resetFilter() {
    filter = null;
    loadFirstPage();
  }

  Future<void> loadFirstPage() async {
    state = const PaginationState.initial();

    final result = await repository.getAll(
      lastCursor: null,

      filter: filter,
    );

    if (!mounted) return;

    result.when(
      success: (data) => state = PaginationState.data(data: data, hasMore: data.isNotEmpty, isLoadingMore: false),
      failure: (error) => state = PaginationState.error(error: AppException.handle(error)),
    );
  }

  Future<void> loadNextPage() async {
    final currentState = state.mapOrNull(data: (data) => data);
    if (currentState == null || currentState.isLoadingMore || !currentState.hasMore) {
      return;
    }

    state = currentState.copyWith(isLoadingMore: true);

    final lastCursor = currentState.data.isEmpty ? null : currentState.data.last.createdAt;

    final result = await repository.getAll(
      lastCursor: lastCursor,

      filter: filter,
    );

    if (!mounted) return;

    result.when(
      success: (newData) => state = currentState.copyWith(
        data: [...currentState.data, ...newData],
        hasMore: newData.isNotEmpty,
        isLoadingMore: false,
        error: null,
      ),
      failure: (error) => state = currentState.copyWith(isLoadingMore: false, error: AppException.handle(error)),
    );
  }
}
