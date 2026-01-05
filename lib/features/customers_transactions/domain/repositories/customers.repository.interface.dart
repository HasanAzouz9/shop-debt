import 'package:shop_debts/core/result/result.model.dart';

import '../models/customer.entity.dart';

abstract class CustomersRepositoryInterface {
  Future<Result<List<CustomerEntity>>> getAll({
    String? name,
    required int offset,
    required int limit,
  });
  Future<Result<CustomerEntity>> getById({required String id});
  Future<Result<void>> add({required CustomerEntity customer});
  Future<Result<void>> delete({required String customerId});
  Future<Result<void>> edit({
    required String customerId,
    String? newName,
    String? newPhoneNumber,
  });
  Future<Result<void>> addNote({required String customerId, required String newNote});
  Future<Result<void>> removeNote({required String customerId, required String note});
  // Future<Result<List<String>>> getCustomersNames();
  Future<Result<bool>> nameExist({required String name});
  Future<Result<List<String>>> getNotes({required String customerId});
}
