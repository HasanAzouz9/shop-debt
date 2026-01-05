// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adding_transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddingTransactionState {
  TransactionEntity get transaction => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddingTransactionStateCopyWith<AddingTransactionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingTransactionStateCopyWith<$Res> {
  factory $AddingTransactionStateCopyWith(AddingTransactionState value,
          $Res Function(AddingTransactionState) then) =
      _$AddingTransactionStateCopyWithImpl<$Res, AddingTransactionState>;
  @useResult
  $Res call({TransactionEntity transaction});

  $TransactionEntityCopyWith<$Res> get transaction;
}

/// @nodoc
class _$AddingTransactionStateCopyWithImpl<$Res,
        $Val extends AddingTransactionState>
    implements $AddingTransactionStateCopyWith<$Res> {
  _$AddingTransactionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_value.copyWith(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TransactionEntityCopyWith<$Res> get transaction {
    return $TransactionEntityCopyWith<$Res>(_value.transaction, (value) {
      return _then(_value.copyWith(transaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddingTransactionStateImplCopyWith<$Res>
    implements $AddingTransactionStateCopyWith<$Res> {
  factory _$$AddingTransactionStateImplCopyWith(
          _$AddingTransactionStateImpl value,
          $Res Function(_$AddingTransactionStateImpl) then) =
      __$$AddingTransactionStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TransactionEntity transaction});

  @override
  $TransactionEntityCopyWith<$Res> get transaction;
}

/// @nodoc
class __$$AddingTransactionStateImplCopyWithImpl<$Res>
    extends _$AddingTransactionStateCopyWithImpl<$Res,
        _$AddingTransactionStateImpl>
    implements _$$AddingTransactionStateImplCopyWith<$Res> {
  __$$AddingTransactionStateImplCopyWithImpl(
      _$AddingTransactionStateImpl _value,
      $Res Function(_$AddingTransactionStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transaction = null,
  }) {
    return _then(_$AddingTransactionStateImpl(
      transaction: null == transaction
          ? _value.transaction
          : transaction // ignore: cast_nullable_to_non_nullable
              as TransactionEntity,
    ));
  }
}

/// @nodoc

class _$AddingTransactionStateImpl extends _AddingTransactionState {
  const _$AddingTransactionStateImpl({required this.transaction}) : super._();

  @override
  final TransactionEntity transaction;

  @override
  String toString() {
    return 'AddingTransactionState(transaction: $transaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddingTransactionStateImpl &&
            (identical(other.transaction, transaction) ||
                other.transaction == transaction));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddingTransactionStateImplCopyWith<_$AddingTransactionStateImpl>
      get copyWith => __$$AddingTransactionStateImplCopyWithImpl<
          _$AddingTransactionStateImpl>(this, _$identity);
}

abstract class _AddingTransactionState extends AddingTransactionState {
  const factory _AddingTransactionState(
          {required final TransactionEntity transaction}) =
      _$AddingTransactionStateImpl;
  const _AddingTransactionState._() : super._();

  @override
  TransactionEntity get transaction;
  @override
  @JsonKey(ignore: true)
  _$$AddingTransactionStateImplCopyWith<_$AddingTransactionStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
