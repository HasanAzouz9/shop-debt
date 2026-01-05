// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

InvoiceEntity _$InvoiceEntityFromJson(Map<String, dynamic> json) {
  return _InvoiceEntity.fromJson(json);
}

/// @nodoc
mixin _$InvoiceEntity {
  @protected
  int get id => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'creditor_id')
  String get creditorId => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'creditors')
  CreditorEntity? get creditorDetails => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  List<ItemEntity> get items => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InvoiceEntityCopyWith<InvoiceEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InvoiceEntityCopyWith<$Res> {
  factory $InvoiceEntityCopyWith(InvoiceEntity value, $Res Function(InvoiceEntity) then) =
      _$InvoiceEntityCopyWithImpl<$Res, InvoiceEntity>;
  @useResult
  $Res call({
    @protected int id,
    @protected @JsonKey(name: 'creditor_id') String creditorId,
    @protected @JsonKey(name: 'creditors') CreditorEntity? creditorDetails,
    @JsonKey(name: 'created_at') DateTime createdAt,
    List<ItemEntity> items,
    double total,
    String? note,
  });

  $CreditorEntityCopyWith<$Res>? get creditorDetails;
}

/// @nodoc
class _$InvoiceEntityCopyWithImpl<$Res, $Val extends InvoiceEntity> implements $InvoiceEntityCopyWith<$Res> {
  _$InvoiceEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditorId = null,
    Object? creditorDetails = freezed,
    Object? createdAt = null,
    Object? items = null,
    Object? total = null,
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
            creditorDetails: freezed == creditorDetails
                ? _value.creditorDetails
                : creditorDetails // ignore: cast_nullable_to_non_nullable
                      as CreditorEntity?,
            createdAt: null == createdAt
                ? _value.createdAt
                : createdAt // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            items: null == items
                ? _value.items
                : items // ignore: cast_nullable_to_non_nullable
                      as List<ItemEntity>,
            total: null == total
                ? _value.total
                : total // ignore: cast_nullable_to_non_nullable
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
abstract class _$$InvoiceEntityImplCopyWith<$Res> implements $InvoiceEntityCopyWith<$Res> {
  factory _$$InvoiceEntityImplCopyWith(_$InvoiceEntityImpl value, $Res Function(_$InvoiceEntityImpl) then) =
      __$$InvoiceEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @protected int id,
    @protected @JsonKey(name: 'creditor_id') String creditorId,
    @protected @JsonKey(name: 'creditors') CreditorEntity? creditorDetails,
    @JsonKey(name: 'created_at') DateTime createdAt,
    List<ItemEntity> items,
    double total,
    String? note,
  });

  @override
  $CreditorEntityCopyWith<$Res>? get creditorDetails;
}

/// @nodoc
class __$$InvoiceEntityImplCopyWithImpl<$Res> extends _$InvoiceEntityCopyWithImpl<$Res, _$InvoiceEntityImpl>
    implements _$$InvoiceEntityImplCopyWith<$Res> {
  __$$InvoiceEntityImplCopyWithImpl(_$InvoiceEntityImpl _value, $Res Function(_$InvoiceEntityImpl) _then)
    : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? creditorId = null,
    Object? creditorDetails = freezed,
    Object? createdAt = null,
    Object? items = null,
    Object? total = null,
    Object? note = freezed,
  }) {
    return _then(
      _$InvoiceEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        creditorId: null == creditorId
            ? _value.creditorId
            : creditorId // ignore: cast_nullable_to_non_nullable
                  as String,
        creditorDetails: freezed == creditorDetails
            ? _value.creditorDetails
            : creditorDetails // ignore: cast_nullable_to_non_nullable
                  as CreditorEntity?,
        createdAt: null == createdAt
            ? _value.createdAt
            : createdAt // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        items: null == items
            ? _value._items
            : items // ignore: cast_nullable_to_non_nullable
                  as List<ItemEntity>,
        total: null == total
            ? _value.total
            : total // ignore: cast_nullable_to_non_nullable
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
class _$InvoiceEntityImpl extends _InvoiceEntity {
  const _$InvoiceEntityImpl({
    @protected required this.id,
    @protected @JsonKey(name: 'creditor_id') required this.creditorId,
    @protected @JsonKey(name: 'creditors') this.creditorDetails,
    @JsonKey(name: 'created_at') required this.createdAt,
    required final List<ItemEntity> items,
    required this.total,
    this.note,
  }) : _items = items,
       super._();

  factory _$InvoiceEntityImpl.fromJson(Map<String, dynamic> json) => _$$InvoiceEntityImplFromJson(json);

  @override
  @protected
  final int id;
  @override
  @protected
  @JsonKey(name: 'creditor_id')
  final String creditorId;
  @override
  @protected
  @JsonKey(name: 'creditors')
  final CreditorEntity? creditorDetails;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  final List<ItemEntity> _items;
  @override
  List<ItemEntity> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final double total;
  @override
  final String? note;

  @override
  String toString() {
    return 'InvoiceEntity(id: $id, creditorId: $creditorId, creditorDetails: $creditorDetails, createdAt: $createdAt, items: $items, total: $total, note: $note)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InvoiceEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creditorId, creditorId) || other.creditorId == creditorId) &&
            (identical(other.creditorDetails, creditorDetails) || other.creditorDetails == creditorDetails) &&
            (identical(other.createdAt, createdAt) || other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.note, note) || other.note == note));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    creditorId,
    creditorDetails,
    createdAt,
    const DeepCollectionEquality().hash(_items),
    total,
    note,
  );

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InvoiceEntityImplCopyWith<_$InvoiceEntityImpl> get copyWith =>
      __$$InvoiceEntityImplCopyWithImpl<_$InvoiceEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InvoiceEntityImplToJson(
      this,
    );
  }
}

abstract class _InvoiceEntity extends InvoiceEntity {
  const factory _InvoiceEntity({
    @protected required final int id,
    @protected @JsonKey(name: 'creditor_id') required final String creditorId,
    @protected @JsonKey(name: 'creditors') final CreditorEntity? creditorDetails,
    @JsonKey(name: 'created_at') required final DateTime createdAt,
    required final List<ItemEntity> items,
    required final double total,
    final String? note,
  }) = _$InvoiceEntityImpl;
  const _InvoiceEntity._() : super._();

  factory _InvoiceEntity.fromJson(Map<String, dynamic> json) = _$InvoiceEntityImpl.fromJson;

  @override
  @protected
  int get id;
  @override
  @protected
  @JsonKey(name: 'creditor_id')
  String get creditorId;
  @override
  @protected
  @JsonKey(name: 'creditors')
  CreditorEntity? get creditorDetails;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  List<ItemEntity> get items;
  @override
  double get total;
  @override
  String? get note;
  @override
  @JsonKey(ignore: true)
  _$$InvoiceEntityImplCopyWith<_$InvoiceEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
