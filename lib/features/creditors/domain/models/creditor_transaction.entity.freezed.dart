// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creditor_transaction.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreditorTransactionEntity _$CreditorTransactionEntityFromJson(Map<String, dynamic> json) {
  return _CreditorTransactionEntity.fromJson(json);
}

/// @nodoc
mixin _$CreditorTransactionEntity {
  @protected
  int get id => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'creditor_id')
  String get creditorId => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'transactions_total')
  double get transactionsTotal => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'creditor_balance')
  double get creditorBalance => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'creditors')
  CreditorEntity? get creditorDetails => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'invoice_id')
  int? get invoiceId => throw _privateConstructorUsedError;
  TransactionType get type => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditorTransactionEntityCopyWith<CreditorTransactionEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditorTransactionEntityCopyWith<$Res> {
  factory $CreditorTransactionEntityCopyWith(
    CreditorTransactionEntity value,
    $Res Function(CreditorTransactionEntity) then,
  ) = _$CreditorTransactionEntityCopyWithImpl<$Res, CreditorTransactionEntity>;
  @useResult
  $Res call({
    @protected int id,
    @protected @JsonKey(name: 'creditor_id') String creditorId,
    @protected @JsonKey(name: 'transactions_total') double transactionsTotal,
    @protected @JsonKey(name: 'creditor_balance') double creditorBalance,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @protected @JsonKey(name: 'creditors') CreditorEntity? creditorDetails,
    @protected @JsonKey(name: 'invoice_id') int? invoiceId,
    TransactionType type,
    double amount,
    String? note,
  });

  $CreditorEntityCopyWith<$Res>? get creditorDetails;
}

/// @nodoc
class _$CreditorTransactionEntityCopyWithImpl<$Res, $Val extends CreditorTransactionEntity>
    implements $CreditorTransactionEntityCopyWith<$Res> {
  _$CreditorTransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditorId = null,
    Object? transactionsTotal = null,
    Object? creditorBalance = null,
    Object? createdAt = null,
    Object? creditorDetails = freezed,
    Object? invoiceId = freezed,
    Object? type = null,
    Object? amount = null,
    Object? note = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            creditorId: null == creditorId
                ? _value.creditorId
                : creditorId // ignore: cast_nullable_to_non_nullable
                      as String,
            transactionsTotal: null == transactionsTotal
                ? _value.transactionsTotal
                : transactionsTotal // ignore: cast_nullable_to_non_nullable
                      as double,
            creditorBalance: null == creditorBalance
                ? _value.creditorBalance
                : creditorBalance // ignore: cast_nullable_to_non_nullable
                      as double,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            creditorDetails: freezed == creditorDetails
                ? _value.creditorDetails
                : creditorDetails // ignore: cast_nullable_to_non_nullable
                      as CreditorEntity?,
            invoiceId: freezed == invoiceId
                ? _value.invoiceId
                : invoiceId // ignore: cast_nullable_to_non_nullable
                      as int?,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as TransactionType,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  @override
  @pragma('vm:prefer-inline')
  $CreditorEntityCopyWith<$Res>? get creditorDetails {
    if (_value.creditorDetails == null) {
      return null;
    }

    return $CreditorEntityCopyWith<$Res>(_value.creditorDetails!, (value) {
      return _then(_value.copyWith(creditorDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreditorTransactionEntityImplCopyWith<$Res> implements $CreditorTransactionEntityCopyWith<$Res> {
  factory _$$CreditorTransactionEntityImplCopyWith(
    _$CreditorTransactionEntityImpl value,
    $Res Function(_$CreditorTransactionEntityImpl) then,
  ) = __$$CreditorTransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @protected int id,
    @protected @JsonKey(name: 'creditor_id') String creditorId,
    @protected @JsonKey(name: 'transactions_total') double transactionsTotal,
    @protected @JsonKey(name: 'creditor_balance') double creditorBalance,
    @JsonKey(name: 'created_at') DateTime createdAt,
    @protected @JsonKey(name: 'creditors') CreditorEntity? creditorDetails,
    @protected @JsonKey(name: 'invoice_id') int? invoiceId,
    TransactionType type,
    double amount,
    String? note,
  });

  @override
  $CreditorEntityCopyWith<$Res>? get creditorDetails;
}

/// @nodoc
class __$$CreditorTransactionEntityImplCopyWithImpl<$Res>
    extends _$CreditorTransactionEntityCopyWithImpl<$Res, _$CreditorTransactionEntityImpl>
    implements _$$CreditorTransactionEntityImplCopyWith<$Res> {
  __$$CreditorTransactionEntityImplCopyWithImpl(
    _$CreditorTransactionEntityImpl _value,
    $Res Function(_$CreditorTransactionEntityImpl) _then,
  ) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditorId = null,
    Object? transactionsTotal = null,
    Object? creditorBalance = null,
    Object? createdAt = null,
    Object? creditorDetails = freezed,
    Object? invoiceId = freezed,
    Object? type = null,
    Object? amount = null,
    Object? note = freezed,
  }) {
    return _then(
      _$CreditorTransactionEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        creditorId: null == creditorId
            ? _value.creditorId
            : creditorId // ignore: cast_nullable_to_non_nullable
                  as String,
        transactionsTotal: null == transactionsTotal
            ? _value.transactionsTotal
            : transactionsTotal // ignore: cast_nullable_to_non_nullable
                  as double,
        creditorBalance: null == creditorBalance
            ? _value.creditorBalance
            : creditorBalance // ignore: cast_nullable_to_non_nullable
                  as double,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        creditorDetails: freezed == creditorDetails
            ? _value.creditorDetails
            : creditorDetails // ignore: cast_nullable_to_non_nullable
                  as CreditorEntity?,
        invoiceId: freezed == invoiceId
            ? _value.invoiceId
            : invoiceId // ignore: cast_nullable_to_non_nullable
                  as int?,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as TransactionType,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditorTransactionEntityImpl extends _CreditorTransactionEntity {
  const _$CreditorTransactionEntityImpl({
    @protected required this.id,
    @protected @JsonKey(name: 'creditor_id') required this.creditorId,
    @protected @JsonKey(name: 'transactions_total') required this.transactionsTotal,
    @protected @JsonKey(name: 'creditor_balance') required this.creditorBalance,
    @JsonKey(name: 'created_at') required this.createdAt,
    @protected @JsonKey(name: 'creditors') this.creditorDetails,
    @protected @JsonKey(name: 'invoice_id') this.invoiceId,
    required this.type,
    required this.amount,
    this.note,
  }) : super._();

  factory _$CreditorTransactionEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreditorTransactionEntityImplFromJson(json);

  @override
  @protected
  final int id;
  @override
  @protected
  @JsonKey(name: 'creditor_id')
  final String creditorId;
  @override
  @protected
  @JsonKey(name: 'transactions_total')
  final double transactionsTotal;
  @override
  @protected
  @JsonKey(name: 'creditor_balance')
  final double creditorBalance;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @protected
  @JsonKey(name: 'creditors')
  final CreditorEntity? creditorDetails;
  @override
  @protected
  @JsonKey(name: 'invoice_id')
  final int? invoiceId;
  @override
  final TransactionType type;
  @override
  final double amount;
  @override
  final String? note;

  @override
  String toString() {
    return 'CreditorTransactionEntity(id: $id, creditorId: $creditorId, transactionsTotal: $transactionsTotal, creditorBalance: $creditorBalance, createdAt: $createdAt, creditorDetails: $creditorDetails, invoiceId: $invoiceId, type: $type, amount: $amount, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditorTransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditorId, creditorId) || other.creditorId == creditorId) &&
            (identical(other.transactionsTotal, transactionsTotal) || other.transactionsTotal == transactionsTotal) &&
            (identical(other.creditorBalance, creditorBalance) || other.creditorBalance == creditorBalance) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.creditorDetails, creditorDetails) || other.creditorDetails == creditorDetails) &&
            (identical(other.invoiceId, invoiceId) || other.invoiceId == invoiceId) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    creditorId,
    transactionsTotal,
    creditorBalance,
    createdAt,
    creditorDetails,
    invoiceId,
    type,
    amount,
    note,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditorTransactionEntityImplCopyWith<_$CreditorTransactionEntityImpl> get copyWith =>
      __$$CreditorTransactionEntityImplCopyWithImpl<_$CreditorTransactionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditorTransactionEntityImplToJson(
      this,
    );
  }
}

abstract class _CreditorTransactionEntity extends CreditorTransactionEntity {
  const factory _CreditorTransactionEntity({
    @protected required final int id,
    @protected @JsonKey(name: 'creditor_id') required final String creditorId,
    @protected @JsonKey(name: 'transactions_total') required final double transactionsTotal,
    @protected @JsonKey(name: 'creditor_balance') required final double creditorBalance,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    @protected @JsonKey(name: 'creditors') final CreditorEntity? creditorDetails,
    @protected @JsonKey(name: 'invoice_id') final int? invoiceId,
    required final TransactionType type,
    required final double amount,
    final String? note,
  }) = _$CreditorTransactionEntityImpl;
  const _CreditorTransactionEntity._() : super._();

  factory _CreditorTransactionEntity.fromJson(Map<String, dynamic> json) = _$CreditorTransactionEntityImpl.fromJson;

  @override
  @protected
  int get id;
  @override
  @protected
  @JsonKey(name: 'creditor_id')
  String get creditorId;
  @override
  @protected
  @JsonKey(name: 'transactions_total')
  double get transactionsTotal;
  @override
  @protected
  @JsonKey(name: 'creditor_balance')
  double get creditorBalance;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @protected
  @JsonKey(name: 'creditors')
  CreditorEntity? get creditorDetails;
  @override
  @protected
  @JsonKey(name: 'invoice_id')
  int? get invoiceId;
  @override
  TransactionType get type;
  @override
  double get amount;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$CreditorTransactionEntityImplCopyWith<_$CreditorTransactionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
