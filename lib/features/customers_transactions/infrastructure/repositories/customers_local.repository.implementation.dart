import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';

import '../../domain/models/customer.entity.dart';
import '../../domain/repositories/customers.repository.interface.dart';
import '../datasource/customers_local.datasource.dart';

class CustomersLocalRepositoryImplementation implements CustomersRepositoryInterface {
  static final provider = Provider<CustomersLocalRepositoryImplementation>(
    (ref) => CustomersLocalRepositoryImplementation(
      localDatasource: ref.watch(CustomersLocalDatasource.provider),
    ),
  );

  final CustomersLocalDatasource localDatasource;
  CustomersLocalRepositoryImplementation({required this.localDatasource});
  @override
  Future<Result<void>> add({required CustomerEntity customer}) {
    return Result.guardFuture(() => localDatasource.add(customer: customer));
  }

  @override
  Future<Result<void>> addNote({required String customerId, required String newNote}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> delete({required String customerId}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> edit({required String customerId, String? newName, String? newPhoneNumber}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<CustomerEntity>>> getAll({
    String? name,
    required int offset,
    required int limit,
  }) {
    return Result.guardFuture(() => localDatasource.getAll());
  }

  @override
  Future<Result<CustomerEntity>> getById({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<bool>> nameExist({required String name}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> removeNote({required String customerId, required String note}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<List<String>>> getNotes({required String customerId}) {
    throw UnimplementedError();
  }
}
