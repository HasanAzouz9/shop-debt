// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'customer.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CustomerEntity _$CustomerEntityFromJson(Map<String, dynamic> json) {
  return _CustomerEntity.fromJson(json);
}

/// @nodoc
mixin _$CustomerEntity {
  @HiveField(0)
  @protected
  String get id => throw _privateConstructorUsedError;
  @HiveField(1)
  String get name => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @HiveField(3)
  List<String> get notes => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'current_balance')
  double get currentBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerEntityCopyWith<CustomerEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerEntityCopyWith<$Res> {
  factory $CustomerEntityCopyWith(CustomerEntity value, $Res Function(CustomerEntity) then) =
      _$CustomerEntityCopyWithImpl<$Res, CustomerEntity>;
  @useResult
  $Res call({
    @HiveField(0) @protected String id,
    @HiveField(1) String name,
    @HiveField(2) @JsonKey(name: 'phone_number') String? phoneNumber,
    @HiveField(3) List<String> notes,
    @HiveField(4) @JsonKey(name: 'current_balance') double currentBalance,
  });
}

/// @nodoc
class _$CustomerEntityCopyWithImpl<$Res, $Val extends CustomerEntity> implements $CustomerEntityCopyWith<$Res> {
  _$CustomerEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? notes = null,
    Object? currentBalance = null,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String?,
            notes: null == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as List<String>,
            currentBalance: null == currentBalance
                ? _value.currentBalance
                : currentBalance // ignore: cast_nullable_to_non_nullable
                      as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CustomerEntityImplCopyWith<$Res> implements $CustomerEntityCopyWith<$Res> {
  factory _$$CustomerEntityImplCopyWith(_$CustomerEntityImpl value, $Res Function(_$CustomerEntityImpl) then) =
      __$$CustomerEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @HiveField(0) @protected String id,
    @HiveField(1) String name,
    @HiveField(2) @JsonKey(name: 'phone_number') String? phoneNumber,
    @HiveField(3) List<String> notes,
    @HiveField(4) @JsonKey(name: 'current_balance') double currentBalance,
  });
}

/// @nodoc
class __$$CustomerEntityImplCopyWithImpl<$Res> extends _$CustomerEntityCopyWithImpl<$Res, _$CustomerEntityImpl>
    implements _$$CustomerEntityImplCopyWith<$Res> {
  __$$CustomerEntityImplCopyWithImpl(_$CustomerEntityImpl _value, $Res Function(_$CustomerEntityImpl) _then)
    : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? notes = null,
    Object? currentBalance = null,
  }) {
    return _then(
      _$CustomerEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String?,
        notes: null == notes
            ? _value._notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as List<String>,
        currentBalance: null == currentBalance
            ? _value.currentBalance
            : currentBalance // ignore: cast_nullable_to_non_nullable
                  as double,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CustomerEntityImpl extends _CustomerEntity {
  const _$CustomerEntityImpl({
    @HiveField(0) @protected required this.id,
    @HiveField(1) required this.name,
    @HiveField(2) @JsonKey(name: 'phone_number') this.phoneNumber,
    @HiveField(3) final List<String> notes = const [],
    @HiveField(4) @JsonKey(name: 'current_balance') required this.currentBalance,
  }) : _notes = notes,
       super._();

  factory _$CustomerEntityImpl.fromJson(Map<String, dynamic> json) => _$$CustomerEntityImplFromJson(json);

  @override
  @HiveField(0)
  @protected
  final String id;
  @override
  @HiveField(1)
  final String name;
  @override
  @HiveField(2)
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  final List<String> _notes;
  @override
  @JsonKey()
  @HiveField(3)
  List<String> get notes {
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_notes);
  }

  @override
  @HiveField(4)
  @JsonKey(name: 'current_balance')
  final double currentBalance;

  @override
  String toString() {
    return 'CustomerEntity(id: $id, name: $name, phoneNumber: $phoneNumber, notes: $notes, currentBalance: $currentBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CustomerEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._notes, _notes) &&
            (identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, phoneNumber, const DeepCollectionEquality().hash(_notes), currentBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CustomerEntityImplCopyWith<_$CustomerEntityImpl> get copyWith =>
      __$$CustomerEntityImplCopyWithImpl<_$CustomerEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CustomerEntityImplToJson(
      this,
    );
  }
}

abstract class _CustomerEntity extends CustomerEntity {
  const factory _CustomerEntity({
    @HiveField(0) @protected required final String id,
    @HiveField(1) required final String name,
    @HiveField(2) @JsonKey(name: 'phone_number') final String? phoneNumber,
    @HiveField(3) final List<String> notes,
    @HiveField(4) @JsonKey(name: 'current_balance') required final double currentBalance,
  }) = _$CustomerEntityImpl;
  const _CustomerEntity._() : super._();

  factory _CustomerEntity.fromJson(Map<String, dynamic> json) = _$CustomerEntityImpl.fromJson;

  @override
  @HiveField(0)
  @protected
  String get id;
  @override
  @HiveField(1)
  String get name;
  @override
  @HiveField(2)
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @HiveField(3)
  List<String> get notes;
  @override
  @HiveField(4)
  @JsonKey(name: 'current_balance')
  double get currentBalance;
  @override
  @JsonKey(ignore: true)
  _$$CustomerEntityImplCopyWith<_$CustomerEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
