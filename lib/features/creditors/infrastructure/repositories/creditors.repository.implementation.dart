import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/creditors.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/datasource/creditors.remote_datasource.dart';

class CreditorsRepositoryImplementation implements CreditorsRepositoryInterface {
  static final provider = Provider<CreditorsRepositoryImplementation>(
    (ref) => CreditorsRepositoryImplementation(datasource: ref.watch(CreditorsRemoteDatasource.provider)),
  );
  final CreditorsRemoteDatasource datasource;

  CreditorsRepositoryImplementation({required this.datasource});
  @override
  Future<Result<void>> add({required CreditorEntity creditor}) async {
    return Result.guardFuture(() => datasource.add(creditor: creditor));
  }

  @override
  Future<Result<List<CreditorEntity>>> getAll({String? name}) async {
    return Result.guardFuture(() => datasource.getAll(name: name));
  }

  @override
  Future<Result<bool>> nameExistValidation({required String name}) async {
    return Result.guardFuture(() => datasource.nameExistValidation(name: name));
  }

  @override
  Future<Result<void>> edit({required String creditorId, String? name, int? phoneNumber}) {
    return Result.guardFuture(() => datasource.edit(creditorId: creditorId, name: name, phoneNumber: phoneNumber));
  }

  @override
  Future<Result<void>> addNote({required String creditorId, required String newNote}) {
    return Result.guardFuture(() => datasource.addNote(creditorId: creditorId, newNote: newNote));
  }

  @override
  Future<Result<List<String>>> getNotes({required String creditorId}) {
    return Result.guardFuture(() => datasource.getNotes(creditorId: creditorId));
  }

  @override
  Future<Result<void>> removeNote({required String creditorId, required String note}) {
    return Result.guardFuture(() => datasource.removeNote(creditorId: creditorId, note: note));
  }
}
