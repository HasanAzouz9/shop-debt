import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/domain/repositories/invoices.repository.interface.dart';
import 'package:shop_debts/features/creditors/infrastructure/datasource/invoices.remote_datasource.dart';

class InvoicesRepositoryImplementation implements InvoicesRepositoryInterface {
  static final provider = Provider<InvoicesRepositoryImplementation>(
    (ref) => InvoicesRepositoryImplementation(datasource: ref.watch(InvoicesRemoteDatasource.provider)),
  );
  final InvoicesRemoteDatasource datasource;

  InvoicesRepositoryImplementation({required this.datasource});
  @override
  Future<Result<void>> add({required InvoiceEntity invoice}) async {
    return Result.guardFuture(() => datasource.add(invoice: invoice));
  }

  @override
  Future<Result<List<InvoiceEntity>>> getAll({
    int? lastCursor,
    DateTime? createdAt,
    String? creditorId,
    String? itemName,
  }) async {
    return Result.guardFuture(
      () => datasource.getAll(lastCursor: lastCursor, createdAt: createdAt, creditorId: creditorId, itemName: itemName),
    );
  }

  @override
  Future<Result<InvoiceEntity>> getById({required int id}) async {
    return Result.guardFuture(() => datasource.getById(id: id));
  }
}
