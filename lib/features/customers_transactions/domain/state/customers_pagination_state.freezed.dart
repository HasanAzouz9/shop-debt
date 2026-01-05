// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customers_pagination_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CustomersPaginationState {
  List<CustomerEntity> get customers => throw _privateConstructorUsedError;
  dynamic get offset => throw _privateConstructorUsedError;
  dynamic get limit => throw _privateConstructorUsedError;
  bool get isLoadingMore => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CustomersPaginationStateCopyWith<CustomersPaginationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomersPaginationStateCopyWith<$Res> {
  factory $CustomersPaginationStateCopyWith(CustomersPaginationState value,
          $Res Function(CustomersPaginationState) then) =
      _$CustomersPaginationStateCopyWithImpl<$Res, CustomersPaginationState>;
  @useResult
  $Res call(
      {List<CustomerEntity> customers,
      dynamic offset,
      dynamic limit,
      bool isLoadingMore,
      bool hasMore,
      String? name});
}

/// @nodoc
class _$CustomersPaginationStateCopyWithImpl<$Res,
        $Val extends CustomersPaginationState>
    implements $CustomersPaginationStateCopyWith<$Res> {
  _$CustomersPaginationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? offset = freezed,
    Object? limit = freezed,
    Object? isLoadingMore = null,
    Object? hasMore = null,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      customers: null == customers
          ? _value.customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerEntity>,
      offset: freezed == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as dynamic,
      limit: freezed == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CustomersPaginationStateImplCopyWith<$Res>
    implements $CustomersPaginationStateCopyWith<$Res> {
  factory _$$CustomersPaginationStateImplCopyWith(
          _$CustomersPaginationStateImpl value,
          $Res Function(_$CustomersPaginationStateImpl) then) =
      __$$CustomersPaginationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<CustomerEntity> customers,
      dynamic offset,
      dynamic limit,
      bool isLoadingMore,
      bool hasMore,
      String? name});
}

/// @nodoc
class __$$CustomersPaginationStateImplCopyWithImpl<$Res>
    extends _$CustomersPaginationStateCopyWithImpl<$Res,
        _$CustomersPaginationStateImpl>
    implements _$$CustomersPaginationStateImplCopyWith<$Res> {
  __$$CustomersPaginationStateImplCopyWithImpl(
      _$CustomersPaginationStateImpl _value,
      $Res Function(_$CustomersPaginationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? customers = null,
    Object? offset = freezed,
    Object? limit = freezed,
    Object? isLoadingMore = null,
    Object? hasMore = null,
    Object? name = freezed,
  }) {
    return _then(_$CustomersPaginationStateImpl(
      customers: null == customers
          ? _value._customers
          : customers // ignore: cast_nullable_to_non_nullable
              as List<CustomerEntity>,
      offset: freezed == offset ? _value.offset! : offset,
      limit: freezed == limit ? _value.limit! : limit,
      isLoadingMore: null == isLoadingMore
          ? _value.isLoadingMore
          : isLoadingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CustomersPaginationStateImpl implements _CustomersPaginationState {
  const _$CustomersPaginationStateImpl(
      {final List<CustomerEntity> customers = const [],
      this.offset = 0,
      this.limit = 15,
      this.isLoadingMore = false,
      this.hasMore = false,
      this.name})
      : _customers = customers;

  final List<CustomerEntity> _customers;
  @override
  @JsonKey()
  List<CustomerEntity> get customers {
    if (_customers is EqualUnmodifiableListView) return _customers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_customers);
  }

  @override
  @JsonKey()
  final dynamic offset;
  @override
  @JsonKey()
  final dynamic limit;
  @override
  @JsonKey()
  final bool isLoadingMore;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  final String? name;

  @override
  String toString() {
    return 'CustomersPaginationState(customers: $customers, offset: $offset, limit: $limit, isLoadingMore: $isLoadingMore, hasMore: $hasMore, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomersPaginationStateImpl &&
            const DeepCollectionEquality()
                .equals(other._customers, _customers) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit) &&
            (identical(other.isLoadingMore, isLoadingMore) ||
                other.isLoadingMore == isLoadingMore) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_customers),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit),
      isLoadingMore,
      hasMore,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomersPaginationStateImplCopyWith<_$CustomersPaginationStateImpl>
      get copyWith => __$$CustomersPaginationStateImplCopyWithImpl<
          _$CustomersPaginationStateImpl>(this, _$identity);
}

abstract class _CustomersPaginationState implements CustomersPaginationState {
  const factory _CustomersPaginationState(
      {final List<CustomerEntity> customers,
      final dynamic offset,
      final dynamic limit,
      final bool isLoadingMore,
      final bool hasMore,
      final String? name}) = _$CustomersPaginationStateImpl;

  @override
  List<CustomerEntity> get customers;
  @override
  dynamic get offset;
  @override
  dynamic get limit;
  @override
  bool get isLoadingMore;
  @override
  bool get hasMore;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$CustomersPaginationStateImplCopyWith<_$CustomersPaginationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
