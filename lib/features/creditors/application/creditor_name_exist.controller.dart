import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class CreditorNameExistController extends StateNotifier<AsyncValue<bool>> {
  static final provider = StateNotifierProvider.autoDispose<CreditorNameExistController, AsyncValue<bool>>(
    (ref) => CreditorNameExistController(interface: ref.watch(CreditorsRepositoryImplementation.provider)),
  );
  CreditorNameExistController({required this.interface}) : super(const AsyncLoading());
  final CreditorsRepositoryInterface interface;

  Timer? _debounce;

  nameExist({required String name}) {
    state = const AsyncLoading();
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final result = await interface.nameExistValidation(name: name);
      if (!mounted) return;
      result.when(
        success: (data) => state = AsyncData(data),
        failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
      );
    });
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }
}
