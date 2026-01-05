import 'dart:async';

import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/repositories/creditors.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';
import '../domain/models/creditor.entity.dart';

class GetAllCreditorsController extends StateNotifier<AsyncValue<List<CreditorEntity>>> {
  static final provider =
      StateNotifierProvider.autoDispose<GetAllCreditorsController, AsyncValue<List<CreditorEntity>>>(
        (ref) => GetAllCreditorsController(interface: ref.watch(CreditorsRepositoryImplementation.provider)),
      );
  GetAllCreditorsController({required this.interface}) : super(const AsyncLoading()) {
    getAll();
  }
  final CreditorsRepositoryInterface interface;

  Timer? _debounce;

  getAll({String? name}) async {
    state = const AsyncLoading();
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 500), () async {
      final result = await interface.getAll(name: name);
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
