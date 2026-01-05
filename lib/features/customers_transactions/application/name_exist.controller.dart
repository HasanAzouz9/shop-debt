import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import 'package:shop_debts/features/customers_transactions/infrastructure/repositories/customers_remote.repository.implementation.dart';

import 'dart:async';

class NameExistController extends StateNotifier<AsyncValue<bool>> {
  static final provider = StateNotifierProvider.autoDispose<NameExistController, AsyncValue<bool>>(
    (ref) => NameExistController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );
  NameExistController({required this.repository}) : super(const AsyncLoading());

  final CustomersRepositoryInterface repository;
  Timer? _debounce;

  void nameExist({required String name}) {
    state = const AsyncLoading();

    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final result = await repository.nameExist(name: name);
      if (!mounted) return;
      state = result.when(
        success: (data) => AsyncData(data),
        failure: (failure) => AsyncError(failure, StackTrace.current),
      );
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
