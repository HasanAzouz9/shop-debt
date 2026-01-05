import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/features/creditors/domain/models/item.entity.dart';

part 'invoice.entity.freezed.dart';
part 'invoice.entity.g.dart';

@freezed
class InvoiceEntity with _$InvoiceEntity {
  const InvoiceEntity._();

  const factory InvoiceEntity({
    @protected required int id,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'creditor_id') required String creditorId,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'creditors') CreditorEntity? creditorDetails,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required DateTime createdAt,
    required List<ItemEntity> items,
    required double total,
    String? note,
  }) = _InvoiceEntity;

  factory InvoiceEntity.fromJson(Map<String, dynamic> json) => _$InvoiceEntityFromJson(json);
  String get getCreditorId => creditorId;
  int get getId => id;
  CreditorEntity? get getCreditorDetails => creditorDetails;
}
