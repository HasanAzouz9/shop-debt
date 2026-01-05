import '../../../../core/result/result.model.dart';

abstract class PhoneRepositoryInterface {
  Future<Result<void>> makeCall({required String phoneNumber});
  Future<Result<void>> sendSMS({required String phoneNumber});
}
