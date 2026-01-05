import 'package:freezed_annotation/freezed_annotation.dart';

part 'creditor.entity.freezed.dart';
part 'creditor.entity.g.dart';

@freezed
class CreditorEntity with _$CreditorEntity {
  const CreditorEntity._();
  const factory CreditorEntity({
    @protected required String id,
    // ignore: invalid_annotation_target
    @protected @JsonKey(name: 'current_balance') required double currentBalance,
    required String name,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'phone_number') int? phoneNumber,
    List<String>? notes,
  }) = _CreditorEntity;

  factory CreditorEntity.fromJson(Map<String, dynamic> json) => _$CreditorEntityFromJson(json);

  String get getId => id;
  double get getCurrentBalance => currentBalance;
}
