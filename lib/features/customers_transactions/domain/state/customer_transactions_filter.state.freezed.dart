// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer_transactions_filter.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomerTransactionsFilterState {
  bool get isFiltered => throw _privateConstructorUsedError;
  String? get customerId => throw _privateConstructorUsedError;
  TransactionType? get transactionType => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomerTransactionsFilterStateCopyWith<CustomerTransactionsFilterState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerTransactionsFilterStateCopyWith<$Res> {
  factory $CustomerTransactionsFilterStateCopyWith(
          CustomerTransactionsFilterState value,
          $Res Function(CustomerTransactionsFilterState) then) =
      _$CustomerTransactionsFilterStateCopyWithImpl<$Res,
          CustomerTransactionsFilterState>;
  @useResult
  $Res call(
      {bool isFiltered,
      String? customerId,
      TransactionType? transactionType,
      DateTime? createdAt});
}

/// @nodoc
class _$CustomerTransactionsFilterStateCopyWithImpl<$Res,
        $Val extends CustomerTransactionsFilterState>
    implements $CustomerTransactionsFilterStateCopyWith<$Res> {
  _$CustomerTransactionsFilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFiltered = null,
    Object? customerId = freezed,
    Object? transactionType = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      isFiltered: null == isFiltered
          ? _value.isFiltered
          : isFiltered // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomerTransactionFilterStateImplCopyWith<$Res>
    implements $CustomerTransactionsFilterStateCopyWith<$Res> {
  factory _$$CustomerTransactionFilterStateImplCopyWith(
          _$CustomerTransactionFilterStateImpl value,
          $Res Function(_$CustomerTransactionFilterStateImpl) then) =
      __$$CustomerTransactionFilterStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isFiltered,
      String? customerId,
      TransactionType? transactionType,
      DateTime? createdAt});
}

/// @nodoc
class __$$CustomerTransactionFilterStateImplCopyWithImpl<$Res>
    extends _$CustomerTransactionsFilterStateCopyWithImpl<$Res,
        _$CustomerTransactionFilterStateImpl>
    implements _$$CustomerTransactionFilterStateImplCopyWith<$Res> {
  __$$CustomerTransactionFilterStateImplCopyWithImpl(
      _$CustomerTransactionFilterStateImpl _value,
      $Res Function(_$CustomerTransactionFilterStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFiltered = null,
    Object? customerId = freezed,
    Object? transactionType = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CustomerTransactionFilterStateImpl(
      isFiltered: null == isFiltered
          ? _value.isFiltered
          : isFiltered // ignore: cast_nullable_to_non_nullable
              as bool,
      customerId: freezed == customerId
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String?,
      transactionType: freezed == transactionType
          ? _value.transactionType
          : transactionType // ignore: cast_nullable_to_non_nullable
              as TransactionType?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$CustomerTransactionFilterStateImpl
    implements _CustomerTransactionFilterState {
  const _$CustomerTransactionFilterStateImpl(
      {this.isFiltered = false,
      this.customerId,
      this.transactionType,
      this.createdAt});

  @override
  @JsonKey()
  final bool isFiltered;
  @override
  final String? customerId;
  @override
  final TransactionType? transactionType;
  @override
  final DateTime? createdAt;

  @override
  String toString() {
    return 'CustomerTransactionsFilterState(isFiltered: $isFiltered, customerId: $customerId, transactionType: $transactionType, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerTransactionFilterStateImpl &&
            (identical(other.isFiltered, isFiltered) ||
                other.isFiltered == isFiltered) &&
            (identical(other.customerId, customerId) ||
                other.customerId == customerId) &&
            (identical(other.transactionType, transactionType) ||
                other.transactionType == transactionType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isFiltered, customerId, transactionType, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerTransactionFilterStateImplCopyWith<
          _$CustomerTransactionFilterStateImpl>
      get copyWith => __$$CustomerTransactionFilterStateImplCopyWithImpl<
          _$CustomerTransactionFilterStateImpl>(this, _$identity);
}

abstract class _CustomerTransactionFilterState
    implements CustomerTransactionsFilterState {
  const factory _CustomerTransactionFilterState(
      {final bool isFiltered,
      final String? customerId,
      final TransactionType? transactionType,
      final DateTime? createdAt}) = _$CustomerTransactionFilterStateImpl;

  @override
  bool get isFiltered;
  @override
  String? get customerId;
  @override
  TransactionType? get transactionType;
  @override
  DateTime? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CustomerTransactionFilterStateImplCopyWith<
          _$CustomerTransactionFilterStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
