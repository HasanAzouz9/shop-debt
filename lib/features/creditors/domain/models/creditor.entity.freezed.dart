// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'creditor.entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

CreditorEntity _$CreditorEntityFromJson(Map<String, dynamic> json) {
  return _CreditorEntity.fromJson(json);
}

/// @nodoc
mixin _$CreditorEntity {
  @protected
  String get id => throw _privateConstructorUsedError;
  @protected
  @JsonKey(name: 'current_balance')
  double get currentBalance => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  int? get phoneNumber => throw _privateConstructorUsedError;
  List<String>? get notes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreditorEntityCopyWith<CreditorEntity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreditorEntityCopyWith<$Res> {
  factory $CreditorEntityCopyWith(CreditorEntity value, $Res Function(CreditorEntity) then) =
      _$CreditorEntityCopyWithImpl<$Res, CreditorEntity>;
  @useResult
  $Res call({
    @protected String id,
    @protected @JsonKey(name: 'current_balance') double currentBalance,
    String name,
    @JsonKey(name: 'phone_number') int? phoneNumber,
    List<String>? notes,
  });
}

/// @nodoc
class _$CreditorEntityCopyWithImpl<$Res, $Val extends CreditorEntity> implements $CreditorEntityCopyWith<$Res> {
  _$CreditorEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentBalance = null,
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            currentBalance: null == currentBalance
                ? _value.currentBalance
                : currentBalance // ignore: cast_nullable_to_non_nullable
                      as double,
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            phoneNumber: freezed == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as int?,
            notes: freezed == notes
                ? _value.notes
                : notes // ignore: cast_nullable_to_non_nullable
                      as List<String>?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$CreditorEntityImplCopyWith<$Res> implements $CreditorEntityCopyWith<$Res> {
  factory _$$CreditorEntityImplCopyWith(_$CreditorEntityImpl value, $Res Function(_$CreditorEntityImpl) then) =
      __$$CreditorEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @protected String id,
    @protected @JsonKey(name: 'current_balance') double currentBalance,
    String name,
    @JsonKey(name: 'phone_number') int? phoneNumber,
    List<String>? notes,
  });
}

/// @nodoc
class __$$CreditorEntityImplCopyWithImpl<$Res> extends _$CreditorEntityCopyWithImpl<$Res, _$CreditorEntityImpl>
    implements _$$CreditorEntityImplCopyWith<$Res> {
  __$$CreditorEntityImplCopyWithImpl(_$CreditorEntityImpl _value, $Res Function(_$CreditorEntityImpl) _then)
    : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? currentBalance = null,
    Object? name = null,
    Object? phoneNumber = freezed,
    Object? notes = freezed,
  }) {
    return _then(
      _$CreditorEntityImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        currentBalance: null == currentBalance
            ? _value.currentBalance
            : currentBalance // ignore: cast_nullable_to_non_nullable
                  as double,
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        phoneNumber: freezed == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as int?,
        notes: freezed == notes
            ? _value._notes
            : notes // ignore: cast_nullable_to_non_nullable
                  as List<String>?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CreditorEntityImpl extends _CreditorEntity {
  const _$CreditorEntityImpl({
    @protected required this.id,
    @protected @JsonKey(name: 'current_balance') required this.currentBalance,
    required this.name,
    @JsonKey(name: 'phone_number') this.phoneNumber,
    final List<String>? notes,
  }) : _notes = notes,
       super._();

  factory _$CreditorEntityImpl.fromJson(Map<String, dynamic> json) => _$$CreditorEntityImplFromJson(json);

  @override
  @protected
  final String id;
  @override
  @protected
  @JsonKey(name: 'current_balance')
  final double currentBalance;
  @override
  final String name;
  @override
  @JsonKey(name: 'phone_number')
  final int? phoneNumber;
  final List<String>? _notes;
  @override
  List<String>? get notes {
    final value = _notes;
    if (value == null) return null;
    if (_notes is EqualUnmodifiableListView) return _notes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreditorEntity(id: $id, currentBalance: $currentBalance, name: $name, phoneNumber: $phoneNumber, notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreditorEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.currentBalance, currentBalance) || other.currentBalance == currentBalance) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber) &&
            const DeepCollectionEquality().equals(other._notes, _notes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, currentBalance, name, phoneNumber, const DeepCollectionEquality().hash(_notes));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreditorEntityImplCopyWith<_$CreditorEntityImpl> get copyWith =>
      __$$CreditorEntityImplCopyWithImpl<_$CreditorEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditorEntityImplToJson(
      this,
    );
  }
}

abstract class _CreditorEntity extends CreditorEntity {
  const factory _CreditorEntity({
    @protected required final String id,
    @protected @JsonKey(name: 'current_balance') required final double currentBalance,
    required final String name,
    @JsonKey(name: 'phone_number') final int? phoneNumber,
    final List<String>? notes,
  }) = _$CreditorEntityImpl;
  const _CreditorEntity._() : super._();

  factory _CreditorEntity.fromJson(Map<String, dynamic> json) = _$CreditorEntityImpl.fromJson;

  @override
  @protected
  String get id;
  @override
  @protected
  @JsonKey(name: 'current_balance')
  double get currentBalance;
  @override
  String get name;
  @override
  @JsonKey(name: 'phone_number')
  int? get phoneNumber;
  @override
  List<String>? get notes;
  @override
  @JsonKey(ignore: true)
  _$$CreditorEntityImplCopyWith<_$CreditorEntityImpl> get copyWith => throw _privateConstructorUsedError;
}
