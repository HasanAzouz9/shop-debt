import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'custom_exception.dart';
import 'local_exceptions.dart';
import 'remote_exceptions.dart' as local_ex;
import 'remote_exceptions.dart';
import 'supabase_exceptions.dart';

part 'app_exceptions.freezed.dart';

@freezed
class AppException with _$AppException implements CustomException {
  const AppException._();

  const factory AppException.local({required LocalExceptions failure}) = _LocalAppException;

  const factory AppException.remote({required RemoteExceptions failure}) = _RemoteAppException;

  const factory AppException.supabase({required SupabaseExceptions failure}) = _SupabaseAppException;

  const factory AppException.unknown({required String message}) = _UnknownAppException;

  /// Provides a unified human-readable message.
  @override
  String get message => when(
    local: (f) => f.message,
    remote: (f) => f.message,
    supabase: (f) => f.message,
    unknown: (msg) => msg,
  );

  /// Handles any thrown object and converts it into a structured [AppException].
  factory AppException.handle(Object failure, [StackTrace? stackTrace]) {
    // 1. Supabase-specific exceptions
    if (failure is AuthException ||
        failure is StorageException ||
        failure is PostgrestException ||
        failure.toString().contains('RealtimeError')) {
      return AppException.supabase(failure: SupabaseExceptions.handle(failure));
    }

    // 2. Remote (Dio) exceptions
    if (failure is DioException) {
      return AppException.remote(
        failure: RemoteExceptions.handleException(failure),
      );
    }

    // 3. Local exceptions (e.g., file, cache, platform)
    if (failure is Exception) {
      return AppException.local(
        failure: LocalExceptions.handleException(failure),
      );
    }

    // 4. Fallback
    return AppException.unknown(message: failure.toString());
  }
}
