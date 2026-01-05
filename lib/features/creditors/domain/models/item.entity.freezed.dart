// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'item.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ItemEntity _$ItemEntityFromJson(Map<String, dynamic> json) {
  return _ItemEntity.fromJson(json);
}

/// @nodoc
mixin _$ItemEntity {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemEntityCopyWith<ItemEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemEntityCopyWith<$Res> {
  factory $ItemEntityCopyWith(
          ItemEntity value, $Res Function(ItemEntity) then) =
      _$ItemEntityCopyWithImpl<$Res, ItemEntity>;
  @useResult
  $Res call({String name, int quantity, double price, double total});
}

/// @nodoc
class _$ItemEntityCopyWithImpl<$Res, $Val extends ItemEntity>
    implements $ItemEntityCopyWith<$Res> {
  _$ItemEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? total = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemEntityImplCopyWith<$Res>
    implements $ItemEntityCopyWith<$Res> {
  factory _$$ItemEntityImplCopyWith(
          _$ItemEntityImpl value, $Res Function(_$ItemEntityImpl) then) =
      __$$ItemEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int quantity, double price, double total});
}

/// @nodoc
class __$$ItemEntityImplCopyWithImpl<$Res>
    extends _$ItemEntityCopyWithImpl<$Res, _$ItemEntityImpl>
    implements _$$ItemEntityImplCopyWith<$Res> {
  __$$ItemEntityImplCopyWithImpl(
      _$ItemEntityImpl _value, $Res Function(_$ItemEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? total = null,
  }) {
    return _then(_$ItemEntityImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemEntityImpl extends _ItemEntity {
  const _$ItemEntityImpl(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.total})
      : super._();

  factory _$ItemEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemEntityImplFromJson(json);

  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final double total;

  @override
  String toString() {
    return 'ItemEntity(name: $name, quantity: $quantity, price: $price, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity, price, total);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemEntityImplCopyWith<_$ItemEntityImpl> get copyWith =>
      __$$ItemEntityImplCopyWithImpl<_$ItemEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemEntityImplToJson(
      this,
    );
  }
}

abstract class _ItemEntity extends ItemEntity {
  const factory _ItemEntity(
      {required final String name,
      required final int quantity,
      required final double price,
      required final double total}) = _$ItemEntityImpl;
  const _ItemEntity._() : super._();

  factory _ItemEntity.fromJson(Map<String, dynamic> json) =
      _$ItemEntityImpl.fromJson;

  @override
  String get name;
  @override
  int get quantity;
  @override
  double get price;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$ItemEntityImplCopyWith<_$ItemEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
