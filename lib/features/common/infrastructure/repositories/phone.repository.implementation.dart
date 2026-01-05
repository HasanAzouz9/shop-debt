import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/common/domain/repositories/phone.repository.interface.dart';
import 'package:shop_debts/features/common/infrastructure/datasource/phone_datasource.dart';

class PhoneRepositoryImplementation implements PhoneRepositoryInterface {
  static final provider = Provider<PhoneRepositoryImplementation>(
    (ref) => PhoneRepositoryImplementation(datasource: ref.watch(PhoneDatasource.provider)),
  );

  final PhoneDatasource datasource;

  PhoneRepositoryImplementation({required this.datasource});
  @override
  Future<Result<void>> makeCall({required String phoneNumber}) async {
    return Result.guardFuture(() => datasource.makeCall(phoneNumber: phoneNumber));
  }

  @override
  Future<Result<void>> sendSMS({required String phoneNumber}) async {
    return Result.guardFuture(() => datasource.sendSMS(phoneNumber: phoneNumber));
  }
}
