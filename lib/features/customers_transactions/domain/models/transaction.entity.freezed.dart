// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

TransactionEntity _$TransactionEntityFromJson(Map<String, dynamic> json) {
  return _TransactionEntity.fromJson(json);
}

/// @nodoc
mixin _$TransactionEntity {
  @HiveField(0)
  @protected
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'customer_id')
  @HiveField(1)
  @protected
  String get customerId => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @HiveField(3)
  @protected
  @JsonKey(name: 'customers')
  CustomerEntity? get customerDetails => throw _privateConstructorUsedError;
  @HiveField(4)
  double get amount => throw _privateConstructorUsedError;
  @HiveField(5)
  TransactionType get type => throw _privateConstructorUsedError;
  @HiveField(6)
  String? get note => throw _privateConstructorUsedError;
  @JsonKey(name: 'transactions_total')
  @HiveField(7)
  @protected
  double get transactionsTotal => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionEntityCopyWith<TransactionEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionEntityCopyWith<$Res> {
  factory $TransactionEntityCopyWith(TransactionEntity value, $Res Function(TransactionEntity) then) =
      _$TransactionEntityCopyWithImpl<$Res, TransactionEntity>;
  @useResult
  $Res call({
    @HiveField(0) @protected String id,
    @JsonKey(name: 'customer_id') @HiveField(1) @protected String customerId,
    @HiveField(2) @JsonKey(name: 'created_at') DateTime createdAt,
    @HiveField(3) @protected @JsonKey(name: 'customers') CustomerEntity? customerDetails,
    @HiveField(4) double amount,
    @HiveField(5) TransactionType type,
    @HiveField(6) String? note,
    @JsonKey(name: 'transactions_total') @HiveField(7) @protected double transactionsTotal,
  });

  $CustomerEntityCopyWith<$Res>? get customerDetails;
}

/// @nodoc
class _$TransactionEntityCopyWithImpl<$Res, $Val extends TransactionEntity>
    implements $TransactionEntityCopyWith<$Res> {
  _$TransactionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? createdAt = null,
    Object? customerDetails = freezed,
    Object? amount = null,
    Object? type = null,
    Object? note = freezed,
    Object? transactionsTotal = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            customerId: null == customerId
                ? _value.customerId
                : customerId // ignore: cast_nullable_to_non_nullable
                      as String,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            customerDetails: freezed == customerDetails
                ? _value.customerDetails
                : customerDetails // ignore: cast_nullable_to_non_nullable
                      as CustomerEntity?,
            amount: null == amount
                ? _value.amount
                : amount // ignore: cast_nullable_to_non_nullable
                      as double,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as TransactionType,
            note: freezed == note
                ? _value.note
                : note // ignore: cast_nullable_to_non_nullable
                      as String?,
            transactionsTotal: null == transactionsTotal
                ? _value.transactionsTotal
                : transactionsTotal // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }

  @override
  @pragma('vm:prefer-inline')
  $CustomerEntityCopyWith<$Res>? get customerDetails {
    if (_value.customerDetails == null) {
      return null;
    }

    return $CustomerEntityCopyWith<$Res>(_value.customerDetails!, (value) {
      return _then(_value.copyWith(customerDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TransactionEntityImplCopyWith<$Res> implements $TransactionEntityCopyWith<$Res> {
  factory _$$TransactionEntityImplCopyWith(_$TransactionEntityImpl value, $Res Function(_$TransactionEntityImpl) then) =
      __$$TransactionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) @protected String id,
    @JsonKey(name: 'customer_id') @HiveField(1) @protected String customerId,
    @HiveField(2) @JsonKey(name: 'created_at') DateTime createdAt,
    @HiveField(3) @protected @JsonKey(name: 'customers') CustomerEntity? customerDetails,
    @HiveField(4) double amount,
    @HiveField(5) TransactionType type,
    @HiveField(6) String? note,
    @JsonKey(name: 'transactions_total') @HiveField(7) @protected double transactionsTotal,
  });

  @override
  $CustomerEntityCopyWith<$Res>? get customerDetails;
}

/// @nodoc
class __$$TransactionEntityImplCopyWithImpl<$Res> extends _$TransactionEntityCopyWithImpl<$Res, _$TransactionEntityImpl>
    implements _$$TransactionEntityImplCopyWith<$Res> {
  __$$TransactionEntityImplCopyWithImpl(_$TransactionEntityImpl _value, $Res Function(_$TransactionEntityImpl) _then)
    : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? customerId = null,
    Object? createdAt = null,
    Object? customerDetails = freezed,
    Object? amount = null,
    Object? type = null,
    Object? note = freezed,
    Object? transactionsTotal = null,
  }) {
    return _then(
      _$TransactionEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        customerId: null == customerId
            ? _value.customerId
            : customerId // ignore: cast_nullable_to_non_nullable
                  as String,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        customerDetails: freezed == customerDetails
            ? _value.customerDetails
            : customerDetails // ignore: cast_nullable_to_non_nullable
                  as CustomerEntity?,
        amount: null == amount
            ? _value.amount
            : amount // ignore: cast_nullable_to_non_nullable
                  as double,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as TransactionType,
        note: freezed == note
            ? _value.note
            : note // ignore: cast_nullable_to_non_nullable
                  as String?,
        transactionsTotal: null == transactionsTotal
            ? _value.transactionsTotal
            : transactionsTotal // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionEntityImpl extends _TransactionEntity {
  const _$TransactionEntityImpl({
    @HiveField(0) @protected required this.id,
    @JsonKey(name: 'customer_id') @HiveField(1) @protected required this.customerId,
    @HiveField(2) @JsonKey(name: 'created_at') required this.createdAt,
    @HiveField(3) @protected @JsonKey(name: 'customers') this.customerDetails,
    @HiveField(4) required this.amount,
    @HiveField(5) required this.type,
    @HiveField(6) this.note,
    @JsonKey(name: 'transactions_total') @HiveField(7) @protected required this.transactionsTotal,
  }) : super._();

  factory _$TransactionEntityImpl.fromJson(Map<String, dynamic> json) => _$$TransactionEntityImplFromJson(json);

  @override
  @HiveField(0)
  @protected
  final String id;
  @override
  @JsonKey(name: 'customer_id')
  @HiveField(1)
  @protected
  final String customerId;
  @override
  @HiveField(2)
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @HiveField(3)
  @protected
  @JsonKey(name: 'customers')
  final CustomerEntity? customerDetails;
  @override
  @HiveField(4)
  final double amount;
  @override
  @HiveField(5)
  final TransactionType type;
  @override
  @HiveField(6)
  final String? note;
  @override
  @JsonKey(name: 'transactions_total')
  @HiveField(7)
  @protected
  final double transactionsTotal;

  @override
  String toString() {
    return 'TransactionEntity(id: $id, customerId: $customerId, createdAt: $createdAt, customerDetails: $customerDetails, amount: $amount, type: $type, note: $note, transactionsTotal: $transactionsTotal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.customerId, customerId) || other.customerId == customerId) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            (identical(other.customerDetails, customerDetails) || other.customerDetails == customerDetails) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.transactionsTotal, transactionsTotal) || other.transactionsTotal == transactionsTotal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, customerId, createdAt, customerDetails, amount, type, note, transactionsTotal);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionEntityImplCopyWith<_$TransactionEntityImpl> get copyWith =>
      __$$TransactionEntityImplCopyWithImpl<_$TransactionEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionEntityImplToJson(
      this,
    );
  }
}

abstract class _TransactionEntity extends TransactionEntity {
  const factory _TransactionEntity({
    @HiveField(0) @protected required final String id,
    @JsonKey(name: 'customer_id') @HiveField(1) @protected required final String customerId,
    @HiveField(2) @JsonKey(name: 'created_at') required final DateTime createdAt,
    @HiveField(3) @protected @JsonKey(name: 'customers') final CustomerEntity? customerDetails,
    @HiveField(4) required final double amount,
    @HiveField(5) required final TransactionType type,
    @HiveField(6) final String? note,
    @JsonKey(name: 'transactions_total') @HiveField(7) @protected required final double transactionsTotal,
  }) = _$TransactionEntityImpl;
  const _TransactionEntity._() : super._();

  factory _TransactionEntity.fromJson(Map<String, dynamic> json) = _$TransactionEntityImpl.fromJson;

  @override
  @HiveField(0)
  @protected
  String get id;
  @override
  @JsonKey(name: 'customer_id')
  @HiveField(1)
  @protected
  String get customerId;
  @override
  @HiveField(2)
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @HiveField(3)
  @protected
  @JsonKey(name: 'customers')
  CustomerEntity? get customerDetails;
  @override
  @HiveField(4)
  double get amount;
  @override
  @HiveField(5)
  TransactionType get type;
  @override
  @HiveField(6)
  String? get note;
  @override
  @JsonKey(name: 'transactions_total')
  @HiveField(7)
  @protected
  double get transactionsTotal;
  @override
  @JsonKey(ignore: true)
  _$$TransactionEntityImplCopyWith<_$TransactionEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
