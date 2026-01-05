// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalExceptions failure) local,
    required TResult Function(local_ex.RemoteExceptions failure) remote,
    required TResult Function(SupabaseExceptions failure) supabase,
    required TResult Function(String message) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalExceptions failure)? local,
    TResult? Function(local_ex.RemoteExceptions failure)? remote,
    TResult? Function(SupabaseExceptions failure)? supabase,
    TResult? Function(String message)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalExceptions failure)? local,
    TResult Function(local_ex.RemoteExceptions failure)? remote,
    TResult Function(SupabaseExceptions failure)? supabase,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAppException value) local,
    required TResult Function(_RemoteAppException value) remote,
    required TResult Function(_SupabaseAppException value) supabase,
    required TResult Function(_UnknownAppException value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAppException value)? local,
    TResult? Function(_RemoteAppException value)? remote,
    TResult? Function(_SupabaseAppException value)? supabase,
    TResult? Function(_UnknownAppException value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAppException value)? local,
    TResult Function(_RemoteAppException value)? remote,
    TResult Function(_SupabaseAppException value)? supabase,
    TResult Function(_UnknownAppException value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppExceptionCopyWith<$Res> {
  factory $AppExceptionCopyWith(
          AppException value, $Res Function(AppException) then) =
      _$AppExceptionCopyWithImpl<$Res, AppException>;
}

/// @nodoc
class _$AppExceptionCopyWithImpl<$Res, $Val extends AppException>
    implements $AppExceptionCopyWith<$Res> {
  _$AppExceptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LocalAppExceptionImplCopyWith<$Res> {
  factory _$$LocalAppExceptionImplCopyWith(_$LocalAppExceptionImpl value,
          $Res Function(_$LocalAppExceptionImpl) then) =
      __$$LocalAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LocalExceptions failure});

  $LocalExceptionsCopyWith<$Res> get failure;
}

/// @nodoc
class __$$LocalAppExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$LocalAppExceptionImpl>
    implements _$$LocalAppExceptionImplCopyWith<$Res> {
  __$$LocalAppExceptionImplCopyWithImpl(_$LocalAppExceptionImpl _value,
      $Res Function(_$LocalAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$LocalAppExceptionImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as LocalExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LocalExceptionsCopyWith<$Res> get failure {
    return $LocalExceptionsCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$LocalAppExceptionImpl extends _LocalAppException {
  const _$LocalAppExceptionImpl({required this.failure}) : super._();

  @override
  final LocalExceptions failure;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocalAppExceptionImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocalAppExceptionImplCopyWith<_$LocalAppExceptionImpl> get copyWith =>
      __$$LocalAppExceptionImplCopyWithImpl<_$LocalAppExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalExceptions failure) local,
    required TResult Function(local_ex.RemoteExceptions failure) remote,
    required TResult Function(SupabaseExceptions failure) supabase,
    required TResult Function(String message) unknown,
  }) {
    return local(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalExceptions failure)? local,
    TResult? Function(local_ex.RemoteExceptions failure)? remote,
    TResult? Function(SupabaseExceptions failure)? supabase,
    TResult? Function(String message)? unknown,
  }) {
    return local?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalExceptions failure)? local,
    TResult Function(local_ex.RemoteExceptions failure)? remote,
    TResult Function(SupabaseExceptions failure)? supabase,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAppException value) local,
    required TResult Function(_RemoteAppException value) remote,
    required TResult Function(_SupabaseAppException value) supabase,
    required TResult Function(_UnknownAppException value) unknown,
  }) {
    return local(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAppException value)? local,
    TResult? Function(_RemoteAppException value)? remote,
    TResult? Function(_SupabaseAppException value)? supabase,
    TResult? Function(_UnknownAppException value)? unknown,
  }) {
    return local?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAppException value)? local,
    TResult Function(_RemoteAppException value)? remote,
    TResult Function(_SupabaseAppException value)? supabase,
    TResult Function(_UnknownAppException value)? unknown,
    required TResult orElse(),
  }) {
    if (local != null) {
      return local(this);
    }
    return orElse();
  }
}

abstract class _LocalAppException extends AppException {
  const factory _LocalAppException({required final LocalExceptions failure}) =
      _$LocalAppExceptionImpl;
  const _LocalAppException._() : super._();

  LocalExceptions get failure;
  @JsonKey(ignore: true)
  _$$LocalAppExceptionImplCopyWith<_$LocalAppExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoteAppExceptionImplCopyWith<$Res> {
  factory _$$RemoteAppExceptionImplCopyWith(_$RemoteAppExceptionImpl value,
          $Res Function(_$RemoteAppExceptionImpl) then) =
      __$$RemoteAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({local_ex.RemoteExceptions failure});

  $RemoteExceptionsCopyWith<$Res> get failure;
}

/// @nodoc
class __$$RemoteAppExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$RemoteAppExceptionImpl>
    implements _$$RemoteAppExceptionImplCopyWith<$Res> {
  __$$RemoteAppExceptionImplCopyWithImpl(_$RemoteAppExceptionImpl _value,
      $Res Function(_$RemoteAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$RemoteAppExceptionImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as local_ex.RemoteExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RemoteExceptionsCopyWith<$Res> get failure {
    return $RemoteExceptionsCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$RemoteAppExceptionImpl extends _RemoteAppException {
  const _$RemoteAppExceptionImpl({required this.failure}) : super._();

  @override
  final local_ex.RemoteExceptions failure;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoteAppExceptionImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoteAppExceptionImplCopyWith<_$RemoteAppExceptionImpl> get copyWith =>
      __$$RemoteAppExceptionImplCopyWithImpl<_$RemoteAppExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalExceptions failure) local,
    required TResult Function(local_ex.RemoteExceptions failure) remote,
    required TResult Function(SupabaseExceptions failure) supabase,
    required TResult Function(String message) unknown,
  }) {
    return remote(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalExceptions failure)? local,
    TResult? Function(local_ex.RemoteExceptions failure)? remote,
    TResult? Function(SupabaseExceptions failure)? supabase,
    TResult? Function(String message)? unknown,
  }) {
    return remote?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalExceptions failure)? local,
    TResult Function(local_ex.RemoteExceptions failure)? remote,
    TResult Function(SupabaseExceptions failure)? supabase,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAppException value) local,
    required TResult Function(_RemoteAppException value) remote,
    required TResult Function(_SupabaseAppException value) supabase,
    required TResult Function(_UnknownAppException value) unknown,
  }) {
    return remote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAppException value)? local,
    TResult? Function(_RemoteAppException value)? remote,
    TResult? Function(_SupabaseAppException value)? supabase,
    TResult? Function(_UnknownAppException value)? unknown,
  }) {
    return remote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAppException value)? local,
    TResult Function(_RemoteAppException value)? remote,
    TResult Function(_SupabaseAppException value)? supabase,
    TResult Function(_UnknownAppException value)? unknown,
    required TResult orElse(),
  }) {
    if (remote != null) {
      return remote(this);
    }
    return orElse();
  }
}

abstract class _RemoteAppException extends AppException {
  const factory _RemoteAppException(
          {required final local_ex.RemoteExceptions failure}) =
      _$RemoteAppExceptionImpl;
  const _RemoteAppException._() : super._();

  local_ex.RemoteExceptions get failure;
  @JsonKey(ignore: true)
  _$$RemoteAppExceptionImplCopyWith<_$RemoteAppExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SupabaseAppExceptionImplCopyWith<$Res> {
  factory _$$SupabaseAppExceptionImplCopyWith(_$SupabaseAppExceptionImpl value,
          $Res Function(_$SupabaseAppExceptionImpl) then) =
      __$$SupabaseAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({SupabaseExceptions failure});

  $SupabaseExceptionsCopyWith<$Res> get failure;
}

/// @nodoc
class __$$SupabaseAppExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$SupabaseAppExceptionImpl>
    implements _$$SupabaseAppExceptionImplCopyWith<$Res> {
  __$$SupabaseAppExceptionImplCopyWithImpl(_$SupabaseAppExceptionImpl _value,
      $Res Function(_$SupabaseAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$SupabaseAppExceptionImpl(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as SupabaseExceptions,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SupabaseExceptionsCopyWith<$Res> get failure {
    return $SupabaseExceptionsCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$SupabaseAppExceptionImpl extends _SupabaseAppException {
  const _$SupabaseAppExceptionImpl({required this.failure}) : super._();

  @override
  final SupabaseExceptions failure;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SupabaseAppExceptionImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SupabaseAppExceptionImplCopyWith<_$SupabaseAppExceptionImpl>
      get copyWith =>
          __$$SupabaseAppExceptionImplCopyWithImpl<_$SupabaseAppExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalExceptions failure) local,
    required TResult Function(local_ex.RemoteExceptions failure) remote,
    required TResult Function(SupabaseExceptions failure) supabase,
    required TResult Function(String message) unknown,
  }) {
    return supabase(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalExceptions failure)? local,
    TResult? Function(local_ex.RemoteExceptions failure)? remote,
    TResult? Function(SupabaseExceptions failure)? supabase,
    TResult? Function(String message)? unknown,
  }) {
    return supabase?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalExceptions failure)? local,
    TResult Function(local_ex.RemoteExceptions failure)? remote,
    TResult Function(SupabaseExceptions failure)? supabase,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (supabase != null) {
      return supabase(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAppException value) local,
    required TResult Function(_RemoteAppException value) remote,
    required TResult Function(_SupabaseAppException value) supabase,
    required TResult Function(_UnknownAppException value) unknown,
  }) {
    return supabase(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAppException value)? local,
    TResult? Function(_RemoteAppException value)? remote,
    TResult? Function(_SupabaseAppException value)? supabase,
    TResult? Function(_UnknownAppException value)? unknown,
  }) {
    return supabase?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAppException value)? local,
    TResult Function(_RemoteAppException value)? remote,
    TResult Function(_SupabaseAppException value)? supabase,
    TResult Function(_UnknownAppException value)? unknown,
    required TResult orElse(),
  }) {
    if (supabase != null) {
      return supabase(this);
    }
    return orElse();
  }
}

abstract class _SupabaseAppException extends AppException {
  const factory _SupabaseAppException(
      {required final SupabaseExceptions failure}) = _$SupabaseAppExceptionImpl;
  const _SupabaseAppException._() : super._();

  SupabaseExceptions get failure;
  @JsonKey(ignore: true)
  _$$SupabaseAppExceptionImplCopyWith<_$SupabaseAppExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnknownAppExceptionImplCopyWith<$Res> {
  factory _$$UnknownAppExceptionImplCopyWith(_$UnknownAppExceptionImpl value,
          $Res Function(_$UnknownAppExceptionImpl) then) =
      __$$UnknownAppExceptionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnknownAppExceptionImplCopyWithImpl<$Res>
    extends _$AppExceptionCopyWithImpl<$Res, _$UnknownAppExceptionImpl>
    implements _$$UnknownAppExceptionImplCopyWith<$Res> {
  __$$UnknownAppExceptionImplCopyWithImpl(_$UnknownAppExceptionImpl _value,
      $Res Function(_$UnknownAppExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnknownAppExceptionImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnknownAppExceptionImpl extends _UnknownAppException {
  const _$UnknownAppExceptionImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnknownAppExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnknownAppExceptionImplCopyWith<_$UnknownAppExceptionImpl> get copyWith =>
      __$$UnknownAppExceptionImplCopyWithImpl<_$UnknownAppExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(LocalExceptions failure) local,
    required TResult Function(local_ex.RemoteExceptions failure) remote,
    required TResult Function(SupabaseExceptions failure) supabase,
    required TResult Function(String message) unknown,
  }) {
    return unknown(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(LocalExceptions failure)? local,
    TResult? Function(local_ex.RemoteExceptions failure)? remote,
    TResult? Function(SupabaseExceptions failure)? supabase,
    TResult? Function(String message)? unknown,
  }) {
    return unknown?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(LocalExceptions failure)? local,
    TResult Function(local_ex.RemoteExceptions failure)? remote,
    TResult Function(SupabaseExceptions failure)? supabase,
    TResult Function(String message)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LocalAppException value) local,
    required TResult Function(_RemoteAppException value) remote,
    required TResult Function(_SupabaseAppException value) supabase,
    required TResult Function(_UnknownAppException value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LocalAppException value)? local,
    TResult? Function(_RemoteAppException value)? remote,
    TResult? Function(_SupabaseAppException value)? supabase,
    TResult? Function(_UnknownAppException value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LocalAppException value)? local,
    TResult Function(_RemoteAppException value)? remote,
    TResult Function(_SupabaseAppException value)? supabase,
    TResult Function(_UnknownAppException value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _UnknownAppException extends AppException {
  const factory _UnknownAppException({required final String message}) =
      _$UnknownAppExceptionImpl;
  const _UnknownAppException._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$UnknownAppExceptionImplCopyWith<_$UnknownAppExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
