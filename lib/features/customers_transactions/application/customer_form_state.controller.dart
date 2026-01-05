import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';

import '../domain/models/customer.entity.dart';
import '../domain/repositories/customers.repository.interface.dart';
import '../domain/state/customer_form_state.dart';
import '../infrastructure/repositories/customers_remote.repository.implementation.dart';

class CustomerFormController extends StateNotifier<CustomerFormState> {
  static final provider = StateNotifierProvider.autoDispose<CustomerFormController, CustomerFormState>(
    (ref) => CustomerFormController(repository: ref.watch(CustomersRemoteRepositoryImplementation.provider)),
  );

  CustomerFormController({required this.repository}) : super(CustomerFormState());

  final CustomersRepositoryInterface repository;
  Timer? _debounce;

  void checkName(String name, {String? currentName}) {
    final cleanName = name.trim().toLowerCase();

    if (currentName != null && cleanName == currentName.toLowerCase().trim()) {
      state = state.copyWith(nameExistsStatus: const AsyncData(false));
      return;
    }

    state = state.copyWith(nameExistsStatus: const AsyncLoading());
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final result = await repository.nameExist(name: name);
      if (!mounted) return;
      result.when(
        success: (data) => state = state.copyWith(nameExistsStatus: AsyncData(data)),
        failure: (error) =>
            state = state.copyWith(submissionStatus: AsyncError(AppException.handle(error), StackTrace.current)),
      );
    });
  }

  Future<void> submit({required CustomerEntity customer, bool isEdit = false}) async {
    state = state.copyWith(submissionStatus: const AsyncLoading());
    if (isEdit) {
      final result = await repository.edit(
        customerId: customer.getId,
        newName: customer.name,
        newPhoneNumber: customer.phoneNumber,
      );
      result.when(
        success: (_) => state = state.copyWith(submissionStatus: const AsyncData(null)),
        failure: (failure) =>
            state = state.copyWith(submissionStatus: AsyncError(AppException.handle(failure), StackTrace.current)),
      );
      return;
    }
    final result = await repository.add(customer: customer);
    result.when(
      success: (data) => state = state.copyWith(submissionStatus: const AsyncData(null)),
      failure: (failure) =>
          state = state.copyWith(submissionStatus: AsyncError(AppException.handle(failure), StackTrace.current)),
    );
  }
}
