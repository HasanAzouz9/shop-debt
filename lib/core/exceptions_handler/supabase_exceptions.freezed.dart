// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supabase_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupabaseExceptions {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) storage,
    required TResult Function(String message) realtime,
    required TResult Function(String message) platform,
    required TResult Function(String message) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? storage,
    TResult? Function(String message)? realtime,
    TResult? Function(String message)? platform,
    TResult? Function(String message)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? storage,
    TResult Function(String message)? realtime,
    TResult Function(String message)? platform,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthExceptionWrapper value) auth,
    required TResult Function(StorageExceptionWrapper value) storage,
    required TResult Function(RealtimeExceptionWrapper value) realtime,
    required TResult Function(PlatformExceptionWrapper value) platform,
    required TResult Function(UnexpectedSupabaseException value) unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthExceptionWrapper value)? auth,
    TResult? Function(StorageExceptionWrapper value)? storage,
    TResult? Function(RealtimeExceptionWrapper value)? realtime,
    TResult? Function(PlatformExceptionWrapper value)? platform,
    TResult? Function(UnexpectedSupabaseException value)? unexpected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthExceptionWrapper value)? auth,
    TResult Function(StorageExceptionWrapper value)? storage,
    TResult Function(RealtimeExceptionWrapper value)? realtime,
    TResult Function(PlatformExceptionWrapper value)? platform,
    TResult Function(UnexpectedSupabaseException value)? unexpected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SupabaseExceptionsCopyWith<SupabaseExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupabaseExceptionsCopyWith<$Res> {
  factory $SupabaseExceptionsCopyWith(
          SupabaseExceptions value, $Res Function(SupabaseExceptions) then) =
      _$SupabaseExceptionsCopyWithImpl<$Res, SupabaseExceptions>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$SupabaseExceptionsCopyWithImpl<$Res, $Val extends SupabaseExceptions>
    implements $SupabaseExceptionsCopyWith<$Res> {
  _$SupabaseExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthExceptionWrapperImplCopyWith<$Res>
    implements $SupabaseExceptionsCopyWith<$Res> {
  factory _$$AuthExceptionWrapperImplCopyWith(_$AuthExceptionWrapperImpl value,
          $Res Function(_$AuthExceptionWrapperImpl) then) =
      __$$AuthExceptionWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$AuthExceptionWrapperImplCopyWithImpl<$Res>
    extends _$SupabaseExceptionsCopyWithImpl<$Res, _$AuthExceptionWrapperImpl>
    implements _$$AuthExceptionWrapperImplCopyWith<$Res> {
  __$$AuthExceptionWrapperImplCopyWithImpl(_$AuthExceptionWrapperImpl _value,
      $Res Function(_$AuthExceptionWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$AuthExceptionWrapperImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AuthExceptionWrapperImpl implements AuthExceptionWrapper {
  const _$AuthExceptionWrapperImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthExceptionWrapperImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthExceptionWrapperImplCopyWith<_$AuthExceptionWrapperImpl>
      get copyWith =>
          __$$AuthExceptionWrapperImplCopyWithImpl<_$AuthExceptionWrapperImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) storage,
    required TResult Function(String message) realtime,
    required TResult Function(String message) platform,
    required TResult Function(String message) unexpected,
  }) {
    return auth(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? storage,
    TResult? Function(String message)? realtime,
    TResult? Function(String message)? platform,
    TResult? Function(String message)? unexpected,
  }) {
    return auth?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? storage,
    TResult Function(String message)? realtime,
    TResult Function(String message)? platform,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthExceptionWrapper value) auth,
    required TResult Function(StorageExceptionWrapper value) storage,
    required TResult Function(RealtimeExceptionWrapper value) realtime,
    required TResult Function(PlatformExceptionWrapper value) platform,
    required TResult Function(UnexpectedSupabaseException value) unexpected,
  }) {
    return auth(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthExceptionWrapper value)? auth,
    TResult? Function(StorageExceptionWrapper value)? storage,
    TResult? Function(RealtimeExceptionWrapper value)? realtime,
    TResult? Function(PlatformExceptionWrapper value)? platform,
    TResult? Function(UnexpectedSupabaseException value)? unexpected,
  }) {
    return auth?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthExceptionWrapper value)? auth,
    TResult Function(StorageExceptionWrapper value)? storage,
    TResult Function(RealtimeExceptionWrapper value)? realtime,
    TResult Function(PlatformExceptionWrapper value)? platform,
    TResult Function(UnexpectedSupabaseException value)? unexpected,
    required TResult orElse(),
  }) {
    if (auth != null) {
      return auth(this);
    }
    return orElse();
  }
}

abstract class AuthExceptionWrapper implements SupabaseExceptions {
  const factory AuthExceptionWrapper(final String message) =
      _$AuthExceptionWrapperImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$AuthExceptionWrapperImplCopyWith<_$AuthExceptionWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StorageExceptionWrapperImplCopyWith<$Res>
    implements $SupabaseExceptionsCopyWith<$Res> {
  factory _$$StorageExceptionWrapperImplCopyWith(
          _$StorageExceptionWrapperImpl value,
          $Res Function(_$StorageExceptionWrapperImpl) then) =
      __$$StorageExceptionWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$StorageExceptionWrapperImplCopyWithImpl<$Res>
    extends _$SupabaseExceptionsCopyWithImpl<$Res,
        _$StorageExceptionWrapperImpl>
    implements _$$StorageExceptionWrapperImplCopyWith<$Res> {
  __$$StorageExceptionWrapperImplCopyWithImpl(
      _$StorageExceptionWrapperImpl _value,
      $Res Function(_$StorageExceptionWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$StorageExceptionWrapperImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StorageExceptionWrapperImpl implements StorageExceptionWrapper {
  const _$StorageExceptionWrapperImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageExceptionWrapperImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageExceptionWrapperImplCopyWith<_$StorageExceptionWrapperImpl>
      get copyWith => __$$StorageExceptionWrapperImplCopyWithImpl<
          _$StorageExceptionWrapperImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) storage,
    required TResult Function(String message) realtime,
    required TResult Function(String message) platform,
    required TResult Function(String message) unexpected,
  }) {
    return storage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? storage,
    TResult? Function(String message)? realtime,
    TResult? Function(String message)? platform,
    TResult? Function(String message)? unexpected,
  }) {
    return storage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? storage,
    TResult Function(String message)? realtime,
    TResult Function(String message)? platform,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthExceptionWrapper value) auth,
    required TResult Function(StorageExceptionWrapper value) storage,
    required TResult Function(RealtimeExceptionWrapper value) realtime,
    required TResult Function(PlatformExceptionWrapper value) platform,
    required TResult Function(UnexpectedSupabaseException value) unexpected,
  }) {
    return storage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthExceptionWrapper value)? auth,
    TResult? Function(StorageExceptionWrapper value)? storage,
    TResult? Function(RealtimeExceptionWrapper value)? realtime,
    TResult? Function(PlatformExceptionWrapper value)? platform,
    TResult? Function(UnexpectedSupabaseException value)? unexpected,
  }) {
    return storage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthExceptionWrapper value)? auth,
    TResult Function(StorageExceptionWrapper value)? storage,
    TResult Function(RealtimeExceptionWrapper value)? realtime,
    TResult Function(PlatformExceptionWrapper value)? platform,
    TResult Function(UnexpectedSupabaseException value)? unexpected,
    required TResult orElse(),
  }) {
    if (storage != null) {
      return storage(this);
    }
    return orElse();
  }
}

abstract class StorageExceptionWrapper implements SupabaseExceptions {
  const factory StorageExceptionWrapper(final String message) =
      _$StorageExceptionWrapperImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$StorageExceptionWrapperImplCopyWith<_$StorageExceptionWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RealtimeExceptionWrapperImplCopyWith<$Res>
    implements $SupabaseExceptionsCopyWith<$Res> {
  factory _$$RealtimeExceptionWrapperImplCopyWith(
          _$RealtimeExceptionWrapperImpl value,
          $Res Function(_$RealtimeExceptionWrapperImpl) then) =
      __$$RealtimeExceptionWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$RealtimeExceptionWrapperImplCopyWithImpl<$Res>
    extends _$SupabaseExceptionsCopyWithImpl<$Res,
        _$RealtimeExceptionWrapperImpl>
    implements _$$RealtimeExceptionWrapperImplCopyWith<$Res> {
  __$$RealtimeExceptionWrapperImplCopyWithImpl(
      _$RealtimeExceptionWrapperImpl _value,
      $Res Function(_$RealtimeExceptionWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$RealtimeExceptionWrapperImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RealtimeExceptionWrapperImpl implements RealtimeExceptionWrapper {
  const _$RealtimeExceptionWrapperImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealtimeExceptionWrapperImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RealtimeExceptionWrapperImplCopyWith<_$RealtimeExceptionWrapperImpl>
      get copyWith => __$$RealtimeExceptionWrapperImplCopyWithImpl<
          _$RealtimeExceptionWrapperImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) storage,
    required TResult Function(String message) realtime,
    required TResult Function(String message) platform,
    required TResult Function(String message) unexpected,
  }) {
    return realtime(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? storage,
    TResult? Function(String message)? realtime,
    TResult? Function(String message)? platform,
    TResult? Function(String message)? unexpected,
  }) {
    return realtime?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? storage,
    TResult Function(String message)? realtime,
    TResult Function(String message)? platform,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (realtime != null) {
      return realtime(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthExceptionWrapper value) auth,
    required TResult Function(StorageExceptionWrapper value) storage,
    required TResult Function(RealtimeExceptionWrapper value) realtime,
    required TResult Function(PlatformExceptionWrapper value) platform,
    required TResult Function(UnexpectedSupabaseException value) unexpected,
  }) {
    return realtime(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthExceptionWrapper value)? auth,
    TResult? Function(StorageExceptionWrapper value)? storage,
    TResult? Function(RealtimeExceptionWrapper value)? realtime,
    TResult? Function(PlatformExceptionWrapper value)? platform,
    TResult? Function(UnexpectedSupabaseException value)? unexpected,
  }) {
    return realtime?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthExceptionWrapper value)? auth,
    TResult Function(StorageExceptionWrapper value)? storage,
    TResult Function(RealtimeExceptionWrapper value)? realtime,
    TResult Function(PlatformExceptionWrapper value)? platform,
    TResult Function(UnexpectedSupabaseException value)? unexpected,
    required TResult orElse(),
  }) {
    if (realtime != null) {
      return realtime(this);
    }
    return orElse();
  }
}

abstract class RealtimeExceptionWrapper implements SupabaseExceptions {
  const factory RealtimeExceptionWrapper(final String message) =
      _$RealtimeExceptionWrapperImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$RealtimeExceptionWrapperImplCopyWith<_$RealtimeExceptionWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformExceptionWrapperImplCopyWith<$Res>
    implements $SupabaseExceptionsCopyWith<$Res> {
  factory _$$PlatformExceptionWrapperImplCopyWith(
          _$PlatformExceptionWrapperImpl value,
          $Res Function(_$PlatformExceptionWrapperImpl) then) =
      __$$PlatformExceptionWrapperImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PlatformExceptionWrapperImplCopyWithImpl<$Res>
    extends _$SupabaseExceptionsCopyWithImpl<$Res,
        _$PlatformExceptionWrapperImpl>
    implements _$$PlatformExceptionWrapperImplCopyWith<$Res> {
  __$$PlatformExceptionWrapperImplCopyWithImpl(
      _$PlatformExceptionWrapperImpl _value,
      $Res Function(_$PlatformExceptionWrapperImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PlatformExceptionWrapperImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PlatformExceptionWrapperImpl implements PlatformExceptionWrapper {
  const _$PlatformExceptionWrapperImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformExceptionWrapperImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformExceptionWrapperImplCopyWith<_$PlatformExceptionWrapperImpl>
      get copyWith => __$$PlatformExceptionWrapperImplCopyWithImpl<
          _$PlatformExceptionWrapperImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) storage,
    required TResult Function(String message) realtime,
    required TResult Function(String message) platform,
    required TResult Function(String message) unexpected,
  }) {
    return platform(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? storage,
    TResult? Function(String message)? realtime,
    TResult? Function(String message)? platform,
    TResult? Function(String message)? unexpected,
  }) {
    return platform?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? storage,
    TResult Function(String message)? realtime,
    TResult Function(String message)? platform,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthExceptionWrapper value) auth,
    required TResult Function(StorageExceptionWrapper value) storage,
    required TResult Function(RealtimeExceptionWrapper value) realtime,
    required TResult Function(PlatformExceptionWrapper value) platform,
    required TResult Function(UnexpectedSupabaseException value) unexpected,
  }) {
    return platform(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthExceptionWrapper value)? auth,
    TResult? Function(StorageExceptionWrapper value)? storage,
    TResult? Function(RealtimeExceptionWrapper value)? realtime,
    TResult? Function(PlatformExceptionWrapper value)? platform,
    TResult? Function(UnexpectedSupabaseException value)? unexpected,
  }) {
    return platform?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthExceptionWrapper value)? auth,
    TResult Function(StorageExceptionWrapper value)? storage,
    TResult Function(RealtimeExceptionWrapper value)? realtime,
    TResult Function(PlatformExceptionWrapper value)? platform,
    TResult Function(UnexpectedSupabaseException value)? unexpected,
    required TResult orElse(),
  }) {
    if (platform != null) {
      return platform(this);
    }
    return orElse();
  }
}

abstract class PlatformExceptionWrapper implements SupabaseExceptions {
  const factory PlatformExceptionWrapper(final String message) =
      _$PlatformExceptionWrapperImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PlatformExceptionWrapperImplCopyWith<_$PlatformExceptionWrapperImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedSupabaseExceptionImplCopyWith<$Res>
    implements $SupabaseExceptionsCopyWith<$Res> {
  factory _$$UnexpectedSupabaseExceptionImplCopyWith(
          _$UnexpectedSupabaseExceptionImpl value,
          $Res Function(_$UnexpectedSupabaseExceptionImpl) then) =
      __$$UnexpectedSupabaseExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedSupabaseExceptionImplCopyWithImpl<$Res>
    extends _$SupabaseExceptionsCopyWithImpl<$Res,
        _$UnexpectedSupabaseExceptionImpl>
    implements _$$UnexpectedSupabaseExceptionImplCopyWith<$Res> {
  __$$UnexpectedSupabaseExceptionImplCopyWithImpl(
      _$UnexpectedSupabaseExceptionImpl _value,
      $Res Function(_$UnexpectedSupabaseExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedSupabaseExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedSupabaseExceptionImpl implements UnexpectedSupabaseException {
  const _$UnexpectedSupabaseExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedSupabaseExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedSupabaseExceptionImplCopyWith<_$UnexpectedSupabaseExceptionImpl>
      get copyWith => __$$UnexpectedSupabaseExceptionImplCopyWithImpl<
          _$UnexpectedSupabaseExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) auth,
    required TResult Function(String message) storage,
    required TResult Function(String message) realtime,
    required TResult Function(String message) platform,
    required TResult Function(String message) unexpected,
  }) {
    return unexpected(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? auth,
    TResult? Function(String message)? storage,
    TResult? Function(String message)? realtime,
    TResult? Function(String message)? platform,
    TResult? Function(String message)? unexpected,
  }) {
    return unexpected?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? auth,
    TResult Function(String message)? storage,
    TResult Function(String message)? realtime,
    TResult Function(String message)? platform,
    TResult Function(String message)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AuthExceptionWrapper value) auth,
    required TResult Function(StorageExceptionWrapper value) storage,
    required TResult Function(RealtimeExceptionWrapper value) realtime,
    required TResult Function(PlatformExceptionWrapper value) platform,
    required TResult Function(UnexpectedSupabaseException value) unexpected,
  }) {
    return unexpected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AuthExceptionWrapper value)? auth,
    TResult? Function(StorageExceptionWrapper value)? storage,
    TResult? Function(RealtimeExceptionWrapper value)? realtime,
    TResult? Function(PlatformExceptionWrapper value)? platform,
    TResult? Function(UnexpectedSupabaseException value)? unexpected,
  }) {
    return unexpected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AuthExceptionWrapper value)? auth,
    TResult Function(StorageExceptionWrapper value)? storage,
    TResult Function(RealtimeExceptionWrapper value)? realtime,
    TResult Function(PlatformExceptionWrapper value)? platform,
    TResult Function(UnexpectedSupabaseException value)? unexpected,
    required TResult orElse(),
  }) {
    if (unexpected != null) {
      return unexpected(this);
    }
    return orElse();
  }
}

abstract class UnexpectedSupabaseException implements SupabaseExceptions {
  const factory UnexpectedSupabaseException(final String message) =
      _$UnexpectedSupabaseExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedSupabaseExceptionImplCopyWith<_$UnexpectedSupabaseExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
