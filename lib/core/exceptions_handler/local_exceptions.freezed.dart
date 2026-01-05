// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalExceptions {
  String get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LocalExceptionsCopyWith<LocalExceptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalExceptionsCopyWith<$Res> {
  factory $LocalExceptionsCopyWith(
          LocalExceptions value, $Res Function(LocalExceptions) then) =
      _$LocalExceptionsCopyWithImpl<$Res, LocalExceptions>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$LocalExceptionsCopyWithImpl<$Res, $Val extends LocalExceptions>
    implements $LocalExceptionsCopyWith<$Res> {
  _$LocalExceptionsCopyWithImpl(this._value, this._then);

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
abstract class _$$ReadErrorExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$ReadErrorExceptionImplCopyWith(_$ReadErrorExceptionImpl value,
          $Res Function(_$ReadErrorExceptionImpl) then) =
      __$$ReadErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ReadErrorExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$ReadErrorExceptionImpl>
    implements _$$ReadErrorExceptionImplCopyWith<$Res> {
  __$$ReadErrorExceptionImplCopyWithImpl(_$ReadErrorExceptionImpl _value,
      $Res Function(_$ReadErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ReadErrorExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ReadErrorExceptionImpl implements ReadErrorException {
  const _$ReadErrorExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadErrorExceptionImplCopyWith<_$ReadErrorExceptionImpl> get copyWith =>
      __$$ReadErrorExceptionImplCopyWithImpl<_$ReadErrorExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return readError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return readError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (readError != null) {
      return readError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return readError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return readError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (readError != null) {
      return readError(this);
    }
    return orElse();
  }
}

abstract class ReadErrorException implements LocalExceptions {
  const factory ReadErrorException(final String message) =
      _$ReadErrorExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$ReadErrorExceptionImplCopyWith<_$ReadErrorExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WriteErrorExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$WriteErrorExceptionImplCopyWith(_$WriteErrorExceptionImpl value,
          $Res Function(_$WriteErrorExceptionImpl) then) =
      __$$WriteErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$WriteErrorExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$WriteErrorExceptionImpl>
    implements _$$WriteErrorExceptionImplCopyWith<$Res> {
  __$$WriteErrorExceptionImplCopyWithImpl(_$WriteErrorExceptionImpl _value,
      $Res Function(_$WriteErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$WriteErrorExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$WriteErrorExceptionImpl implements WriteErrorException {
  const _$WriteErrorExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WriteErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WriteErrorExceptionImplCopyWith<_$WriteErrorExceptionImpl> get copyWith =>
      __$$WriteErrorExceptionImplCopyWithImpl<_$WriteErrorExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return writeError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return writeError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (writeError != null) {
      return writeError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return writeError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return writeError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (writeError != null) {
      return writeError(this);
    }
    return orElse();
  }
}

abstract class WriteErrorException implements LocalExceptions {
  const factory WriteErrorException(final String message) =
      _$WriteErrorExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$WriteErrorExceptionImplCopyWith<_$WriteErrorExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteErrorExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$DeleteErrorExceptionImplCopyWith(_$DeleteErrorExceptionImpl value,
          $Res Function(_$DeleteErrorExceptionImpl) then) =
      __$$DeleteErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$DeleteErrorExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$DeleteErrorExceptionImpl>
    implements _$$DeleteErrorExceptionImplCopyWith<$Res> {
  __$$DeleteErrorExceptionImplCopyWithImpl(_$DeleteErrorExceptionImpl _value,
      $Res Function(_$DeleteErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$DeleteErrorExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DeleteErrorExceptionImpl implements DeleteErrorException {
  const _$DeleteErrorExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteErrorExceptionImplCopyWith<_$DeleteErrorExceptionImpl>
      get copyWith =>
          __$$DeleteErrorExceptionImplCopyWithImpl<_$DeleteErrorExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return deleteError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return deleteError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return deleteError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return deleteError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (deleteError != null) {
      return deleteError(this);
    }
    return orElse();
  }
}

abstract class DeleteErrorException implements LocalExceptions {
  const factory DeleteErrorException(final String message) =
      _$DeleteErrorExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$DeleteErrorExceptionImplCopyWith<_$DeleteErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotFoundExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$NotFoundExceptionImplCopyWith(_$NotFoundExceptionImpl value,
          $Res Function(_$NotFoundExceptionImpl) then) =
      __$$NotFoundExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$NotFoundExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$NotFoundExceptionImpl>
    implements _$$NotFoundExceptionImplCopyWith<$Res> {
  __$$NotFoundExceptionImplCopyWithImpl(_$NotFoundExceptionImpl _value,
      $Res Function(_$NotFoundExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$NotFoundExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$NotFoundExceptionImpl implements NotFoundException {
  const _$NotFoundExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotFoundExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotFoundExceptionImplCopyWith<_$NotFoundExceptionImpl> get copyWith =>
      __$$NotFoundExceptionImplCopyWithImpl<_$NotFoundExceptionImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFoundException implements LocalExceptions {
  const factory NotFoundException(final String message) =
      _$NotFoundExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$NotFoundExceptionImplCopyWith<_$NotFoundExceptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PermissionDeniedExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$PermissionDeniedExceptionImplCopyWith(
          _$PermissionDeniedExceptionImpl value,
          $Res Function(_$PermissionDeniedExceptionImpl) then) =
      __$$PermissionDeniedExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$PermissionDeniedExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$PermissionDeniedExceptionImpl>
    implements _$$PermissionDeniedExceptionImplCopyWith<$Res> {
  __$$PermissionDeniedExceptionImplCopyWithImpl(
      _$PermissionDeniedExceptionImpl _value,
      $Res Function(_$PermissionDeniedExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$PermissionDeniedExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PermissionDeniedExceptionImpl implements PermissionDeniedException {
  const _$PermissionDeniedExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionDeniedExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionDeniedExceptionImplCopyWith<_$PermissionDeniedExceptionImpl>
      get copyWith => __$$PermissionDeniedExceptionImplCopyWithImpl<
          _$PermissionDeniedExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return permissionDenied(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return permissionDenied?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDeniedException implements LocalExceptions {
  const factory PermissionDeniedException(final String message) =
      _$PermissionDeniedExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$PermissionDeniedExceptionImplCopyWith<_$PermissionDeniedExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormatErrorExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$FormatErrorExceptionImplCopyWith(_$FormatErrorExceptionImpl value,
          $Res Function(_$FormatErrorExceptionImpl) then) =
      __$$FormatErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FormatErrorExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$FormatErrorExceptionImpl>
    implements _$$FormatErrorExceptionImplCopyWith<$Res> {
  __$$FormatErrorExceptionImplCopyWithImpl(_$FormatErrorExceptionImpl _value,
      $Res Function(_$FormatErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FormatErrorExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FormatErrorExceptionImpl implements FormatErrorException {
  const _$FormatErrorExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormatErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormatErrorExceptionImplCopyWith<_$FormatErrorExceptionImpl>
      get copyWith =>
          __$$FormatErrorExceptionImplCopyWithImpl<_$FormatErrorExceptionImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return formatError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return formatError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (formatError != null) {
      return formatError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return formatError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return formatError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (formatError != null) {
      return formatError(this);
    }
    return orElse();
  }
}

abstract class FormatErrorException implements LocalExceptions {
  const factory FormatErrorException(final String message) =
      _$FormatErrorExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FormatErrorExceptionImplCopyWith<_$FormatErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnexpectedErrorExceptionImplCopyWith<$Res>
    implements $LocalExceptionsCopyWith<$Res> {
  factory _$$UnexpectedErrorExceptionImplCopyWith(
          _$UnexpectedErrorExceptionImpl value,
          $Res Function(_$UnexpectedErrorExceptionImpl) then) =
      __$$UnexpectedErrorExceptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$UnexpectedErrorExceptionImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$UnexpectedErrorExceptionImpl>
    implements _$$UnexpectedErrorExceptionImplCopyWith<$Res> {
  __$$UnexpectedErrorExceptionImplCopyWithImpl(
      _$UnexpectedErrorExceptionImpl _value,
      $Res Function(_$UnexpectedErrorExceptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$UnexpectedErrorExceptionImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UnexpectedErrorExceptionImpl implements UnexpectedErrorException {
  const _$UnexpectedErrorExceptionImpl(this.message);

  @override
  final String message;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UnexpectedErrorExceptionImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UnexpectedErrorExceptionImplCopyWith<_$UnexpectedErrorExceptionImpl>
      get copyWith => __$$UnexpectedErrorExceptionImplCopyWithImpl<
          _$UnexpectedErrorExceptionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) readError,
    required TResult Function(String message) writeError,
    required TResult Function(String message) deleteError,
    required TResult Function(String message) notFound,
    required TResult Function(String message) permissionDenied,
    required TResult Function(String message) formatError,
    required TResult Function(String message) unexpectedError,
  }) {
    return unexpectedError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String message)? readError,
    TResult? Function(String message)? writeError,
    TResult? Function(String message)? deleteError,
    TResult? Function(String message)? notFound,
    TResult? Function(String message)? permissionDenied,
    TResult? Function(String message)? formatError,
    TResult? Function(String message)? unexpectedError,
  }) {
    return unexpectedError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? readError,
    TResult Function(String message)? writeError,
    TResult Function(String message)? deleteError,
    TResult Function(String message)? notFound,
    TResult Function(String message)? permissionDenied,
    TResult Function(String message)? formatError,
    TResult Function(String message)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReadErrorException value) readError,
    required TResult Function(WriteErrorException value) writeError,
    required TResult Function(DeleteErrorException value) deleteError,
    required TResult Function(NotFoundException value) notFound,
    required TResult Function(PermissionDeniedException value) permissionDenied,
    required TResult Function(FormatErrorException value) formatError,
    required TResult Function(UnexpectedErrorException value) unexpectedError,
  }) {
    return unexpectedError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReadErrorException value)? readError,
    TResult? Function(WriteErrorException value)? writeError,
    TResult? Function(DeleteErrorException value)? deleteError,
    TResult? Function(NotFoundException value)? notFound,
    TResult? Function(PermissionDeniedException value)? permissionDenied,
    TResult? Function(FormatErrorException value)? formatError,
    TResult? Function(UnexpectedErrorException value)? unexpectedError,
  }) {
    return unexpectedError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReadErrorException value)? readError,
    TResult Function(WriteErrorException value)? writeError,
    TResult Function(DeleteErrorException value)? deleteError,
    TResult Function(NotFoundException value)? notFound,
    TResult Function(PermissionDeniedException value)? permissionDenied,
    TResult Function(FormatErrorException value)? formatError,
    TResult Function(UnexpectedErrorException value)? unexpectedError,
    required TResult orElse(),
  }) {
    if (unexpectedError != null) {
      return unexpectedError(this);
    }
    return orElse();
  }
}

abstract class UnexpectedErrorException implements LocalExceptions {
  const factory UnexpectedErrorException(final String message) =
      _$UnexpectedErrorExceptionImpl;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$UnexpectedErrorExceptionImplCopyWith<_$UnexpectedErrorExceptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
