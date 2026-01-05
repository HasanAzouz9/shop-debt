// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'adding_items.state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AddingItemsState {
  bool get isAdding => throw _privateConstructorUsedError;
  bool get addingSuccess => throw _privateConstructorUsedError;
  InvoiceEntity get invoice => throw _privateConstructorUsedError;
  List<ItemEntity> get items => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddingItemsStateCopyWith<AddingItemsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddingItemsStateCopyWith<$Res> {
  factory $AddingItemsStateCopyWith(
          AddingItemsState value, $Res Function(AddingItemsState) then) =
      _$AddingItemsStateCopyWithImpl<$Res, AddingItemsState>;
  @useResult
  $Res call(
      {bool isAdding,
      bool addingSuccess,
      InvoiceEntity invoice,
      List<ItemEntity> items});

  $InvoiceEntityCopyWith<$Res> get invoice;
}

/// @nodoc
class _$AddingItemsStateCopyWithImpl<$Res, $Val extends AddingItemsState>
    implements $AddingItemsStateCopyWith<$Res> {
  _$AddingItemsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdding = null,
    Object? addingSuccess = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      addingSuccess: null == addingSuccess
          ? _value.addingSuccess
          : addingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceEntity,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemEntity>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $InvoiceEntityCopyWith<$Res> get invoice {
    return $InvoiceEntityCopyWith<$Res>(_value.invoice, (value) {
      return _then(_value.copyWith(invoice: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AddingItemsStateImplCopyWith<$Res>
    implements $AddingItemsStateCopyWith<$Res> {
  factory _$$AddingItemsStateImplCopyWith(_$AddingItemsStateImpl value,
          $Res Function(_$AddingItemsStateImpl) then) =
      __$$AddingItemsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isAdding,
      bool addingSuccess,
      InvoiceEntity invoice,
      List<ItemEntity> items});

  @override
  $InvoiceEntityCopyWith<$Res> get invoice;
}

/// @nodoc
class __$$AddingItemsStateImplCopyWithImpl<$Res>
    extends _$AddingItemsStateCopyWithImpl<$Res, _$AddingItemsStateImpl>
    implements _$$AddingItemsStateImplCopyWith<$Res> {
  __$$AddingItemsStateImplCopyWithImpl(_$AddingItemsStateImpl _value,
      $Res Function(_$AddingItemsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAdding = null,
    Object? addingSuccess = null,
    Object? invoice = null,
    Object? items = null,
  }) {
    return _then(_$AddingItemsStateImpl(
      isAdding: null == isAdding
          ? _value.isAdding
          : isAdding // ignore: cast_nullable_to_non_nullable
              as bool,
      addingSuccess: null == addingSuccess
          ? _value.addingSuccess
          : addingSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      invoice: null == invoice
          ? _value.invoice
          : invoice // ignore: cast_nullable_to_non_nullable
              as InvoiceEntity,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemEntity>,
    ));
  }
}

/// @nodoc

class _$AddingItemsStateImpl extends _AddingItemsState {
  const _$AddingItemsStateImpl(
      {this.isAdding = false,
      this.addingSuccess = false,
      required this.invoice,
      final List<ItemEntity> items = const []})
      : _items = items,
        super._();

  @override
  @JsonKey()
  final bool isAdding;
  @override
  @JsonKey()
  final bool addingSuccess;
  @override
  final InvoiceEntity invoice;
  final List<ItemEntity> _items;
  @override
  @JsonKey()
  List<ItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'AddingItemsState(isAdding: $isAdding, addingSuccess: $addingSuccess, invoice: $invoice, items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddingItemsStateImpl &&
            (identical(other.isAdding, isAdding) ||
                other.isAdding == isAdding) &&
            (identical(other.addingSuccess, addingSuccess) ||
                other.addingSuccess == addingSuccess) &&
            (identical(other.invoice, invoice) || other.invoice == invoice) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAdding, addingSuccess, invoice,
      const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddingItemsStateImplCopyWith<_$AddingItemsStateImpl> get copyWith =>
      __$$AddingItemsStateImplCopyWithImpl<_$AddingItemsStateImpl>(
          this, _$identity);
}

abstract class _AddingItemsState extends AddingItemsState {
  const factory _AddingItemsState(
      {final bool isAdding,
      final bool addingSuccess,
      required final InvoiceEntity invoice,
      final List<ItemEntity> items}) = _$AddingItemsStateImpl;
  const _AddingItemsState._() : super._();

  @override
  bool get isAdding;
  @override
  bool get addingSuccess;
  @override
  InvoiceEntity get invoice;
  @override
  List<ItemEntity> get items;
  @override
  @JsonKey(ignore: true)
  _$$AddingItemsStateImplCopyWith<_$AddingItemsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
