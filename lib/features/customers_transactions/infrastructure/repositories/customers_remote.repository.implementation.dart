import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/customers_transactions/domain/repositories/customers.repository.interface.dart';
import '../../domain/models/customer.entity.dart';
import '../datasource/customers_remote.datasource.dart';

class CustomersRemoteRepositoryImplementation implements CustomersRepositoryInterface {
  static final provider = Provider<CustomersRemoteRepositoryImplementation>(
    (ref) => CustomersRemoteRepositoryImplementation(
      remoteDatasource: ref.watch(CustomersRemoteDatasource.provider),
    ),
  );

  final CustomersRemoteDatasource remoteDatasource;

  CustomersRemoteRepositoryImplementation({required this.remoteDatasource});

  @override
  Future<Result<List<CustomerEntity>>> getAll({
    String? name,
    required int offset,
    required int limit,
  }) async {
    return Result.guardFuture(
      () => remoteDatasource.getAll(name: name, offset: offset, limit: limit),
    );
  }

  @override
  Future<Result<void>> add({required CustomerEntity customer}) async {
    return await Result.guardFuture(
      () => remoteDatasource.add(customer: customer),
    );
  }

  @override
  Future<Result<void>> addNote({required String customerId, required String newNote}) async {
    return await Result.guardFuture(
      () => remoteDatasource.addNote(customerId: customerId, newNote: newNote),
    );
  }

  @override
  Future<Result<void>> delete({required String customerId}) {
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> edit({required String customerId, String? newName, String? newPhoneNumber}) async {
    return await Result.guardFuture(
      () => remoteDatasource.edit(customerId: customerId, newName: newName, newPhoneNumber: newPhoneNumber),
    );
  }

  @override
  Future<Result<CustomerEntity>> getById({required String id}) async {
    return Result.guardFuture(() => remoteDatasource.getById(id: id));
  }

  // @override
  // Future<Result<List<String>>> getCustomersNames() {
  //   return Result.guardFuture(() => remoteDatasource.getCustomersNames());
  // }

  @override
  Future<Result<bool>> nameExist({required String name}) async {
    return Result.guardFuture(() => remoteDatasource.nameExist(name: name));
  }

  @override
  Future<Result<void>> removeNote({required String customerId, required String note}) async {
    return Result.guardFuture(() => remoteDatasource.removeNote(customerId: customerId, note: note));
  }

  @override
  Future<Result<List<String>>> getNotes({required String customerId}) async {
    return Result.guardFuture(() => remoteDatasource.getNotes(customerId: customerId));
  }
}
