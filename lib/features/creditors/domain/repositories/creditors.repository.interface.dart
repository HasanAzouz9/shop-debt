import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';

abstract class CreditorsRepositoryInterface {
  Future<Result<List<CreditorEntity>>> getAll({String? name});
  Future<Result<void>> add({required CreditorEntity creditor});
  Future<Result<void>> edit({required String creditorId, String? name, int? phoneNumber});
  Future<Result<bool>> nameExistValidation({required String name});
  Future<Result<void>> addNote({required String creditorId, required String newNote});
  Future<Result<void>> removeNote({required String creditorId, required String note});
  Future<Result<List<String>>> getNotes({required String creditorId});
}
