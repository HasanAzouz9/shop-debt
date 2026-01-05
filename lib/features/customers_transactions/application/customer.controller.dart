import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/customers_transactions/domain/state/customers_pagination_state.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

class CustomerController extends StateNotifier<AsyncValue<CustomersPaginationState>> {
  static final provider = StateNotifierProvider.autoDispose<CustomerController, AsyncValue<CustomersPaginationState>>(
    (ref) => CustomerController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );
  CustomerController({required this.repository}) : super(const AsyncLoading()) {
    loadFirstPage();
  }

  final CustomersRepositoryInterface repository;

  loadFirstPage() async {
    final currentState = state.value ?? const CustomersPaginationState();
    state = const AsyncLoading();
    const initialOffset = 0;
    const pageSize = 15;

    final result = await repository.getAll(
      offset: initialOffset,
      limit: pageSize,
      name: currentState.name,
    );

    if (!mounted) {
      return;
    }
    result.when(
      success: (customersList) {
        state = AsyncData(
          currentState.copyWith(
            customers: customersList,
            offset: initialOffset + pageSize,
            hasMore: customersList.length == pageSize,
            isLoadingMore: false,
            name: currentState.name,
          ),
        );
      },
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }

  loadNextPage() async {
    final currentSate = state.value!;
    if (currentSate.isLoadingMore || !currentSate.hasMore) return;
    state = AsyncData(currentSate.copyWith(isLoadingMore: true));

    final result = await repository.getAll(
      offset: currentSate.offset,
      limit: currentSate.limit,
      name: currentSate.name,
    );

    if (!mounted) {
      return;
    }
    result.when(
      success: (customerList) {
        final newCustomers = [...currentSate.customers, ...customerList];

        state = AsyncData(
          currentSate.copyWith(
            customers: newCustomers,
            offset: currentSate.offset + currentSate.limit,
            isLoadingMore: false,
            hasMore: customerList.length == currentSate.limit,
          ),
        );
      },
      failure: (failure) => AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }

  setFilterAndLoad({String? name}) async {
    final currentState = state.value;
    final normalizedName = name?.trim().isNotEmpty == true ? name!.trim() : null;
    final bool isNameChanged = currentState?.name != normalizedName;

    if (currentState != null && !isNameChanged) {
      return;
    }

    state = AsyncData(
      const CustomersPaginationState().copyWith(name: normalizedName),
    );

    await loadFirstPage();
  }
}
