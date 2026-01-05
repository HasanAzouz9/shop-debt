import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';

abstract class InvoicesRepositoryInterface {
  Future<Result<List<InvoiceEntity>>> getAll({
    int? lastCursor,
    DateTime? createdAt,
    String? creditorId,
    String? itemName,
  });
  Future<Result<InvoiceEntity>> getById({required int id});
  Future<Result<void>> add({required InvoiceEntity invoice});
}
