import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/app_exceptions.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../creditors/domain/state/creditor_form.state.dart';

class CreditorFormStateController extends StateNotifier<CreditorFormState> {
  static final provider = StateNotifierProvider.autoDispose<CreditorFormStateController, CreditorFormState>(
    (ref) => CreditorFormStateController(repository: ref.watch(CreditorsRepositoryImplementation.provider)),
  );
  CreditorFormStateController({required this.repository}) : super(CreditorFormState());

  final CreditorsRepositoryInterface repository;
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
      final result = await repository.nameExistValidation(name: name);
      if (!mounted) return;
      result.when(
        success: (data) => state = state.copyWith(nameExistsStatus: AsyncData(data)),
        failure: (error) =>
            state = state.copyWith(submissionStatus: AsyncError(AppException.handle(error), StackTrace.current)),
      );
    });
  }

  Future<void> submit({required CreditorEntity creditor, bool isEdit = false}) async {
    state = state.copyWith(submissionStatus: const AsyncLoading());
    if (isEdit) {
      final result = await repository.edit(
        creditorId: creditor.getId,
        name: creditor.name,
        phoneNumber: creditor.phoneNumber,
      );
      result.when(
        success: (_) => state = state.copyWith(submissionStatus: const AsyncData(null)),
        failure: (failure) =>
            state = state.copyWith(submissionStatus: AsyncError(AppException.handle(failure), StackTrace.current)),
      );
    }
  }
}
