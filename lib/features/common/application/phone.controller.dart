import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/common/domain/repositories/phone.repository.interface.dart';
import 'package:shop_debts/features/common/infrastructure/repositories/phone.repository.implementation.dart';

import '../../../core/exceptions_handler/app_exceptions.dart';

class PhoneController extends StateNotifier<AsyncValue<void>> {
  static final provider = StateNotifierProvider<PhoneController, AsyncValue<void>>(
    (ref) => PhoneController(interface: ref.watch(PhoneRepositoryImplementation.provider)),
  );
  PhoneController({required this.interface}) : super(const AsyncData(null));
  final PhoneRepositoryInterface interface;

  makeCall({required String phoneNumber}) async {
    state = const AsyncLoading();

    final result = await interface.makeCall(phoneNumber: phoneNumber);
    result.when(
      success: (data) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }

  sendSMS({required String phoneNumber}) async {
    state = const AsyncLoading();

    final result = await interface.sendSMS(phoneNumber: phoneNumber);
    result.when(
      success: (data) => state = const AsyncData(null),
      failure: (failure) => state = AsyncError(AppException.handle(failure), StackTrace.current),
    );
  }
}
