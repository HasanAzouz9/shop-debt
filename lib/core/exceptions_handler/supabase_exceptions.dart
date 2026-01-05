import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/core/exceptions_handler/custom_exception.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../config/const/exception_messages.dart';

part 'supabase_exceptions.freezed.dart';

@freezed
class SupabaseExceptions with _$SupabaseExceptions implements CustomException {
  const factory SupabaseExceptions.auth(String message) = AuthExceptionWrapper;
  const factory SupabaseExceptions.storage(String message) = StorageExceptionWrapper;
  const factory SupabaseExceptions.realtime(String message) = RealtimeExceptionWrapper;
  const factory SupabaseExceptions.platform(String message) = PlatformExceptionWrapper;
  const factory SupabaseExceptions.unexpected(String message) = UnexpectedSupabaseException;

  factory SupabaseExceptions.handle(Object error) {
    if (error is AuthException) return _mapAuthError(error);
    if (error is StorageException) return _mapStorageError(error);
    if (error is PostgrestException) return _mapPostgrestError(error);
    if (error.toString().contains('RealtimeError')) return _mapRealtimeError(error);

    return const SupabaseExceptions.unexpected(AppErrorMessages.unexpectedError);
  }

  static SupabaseExceptions _mapAuthError(AuthException e) {
    switch (e.code) {
      case 'invalid_credentials':
      case 'invalid_grant':
        return const SupabaseExceptions.auth(AppErrorMessages.invalidCredentials);
      case 'email_exists':
        return const SupabaseExceptions.auth(AppErrorMessages.emailExists);
      case 'email_not_confirmed':
        return const SupabaseExceptions.auth(AppErrorMessages.emailNotConfirmed);
      case 'email_provider_disabled':
        return const SupabaseExceptions.auth(AppErrorMessages.providerDisabled);
      case 'bad_jwt':
        return const SupabaseExceptions.auth(AppErrorMessages.badJwt);
      case 'captcha_failed':
        return const SupabaseExceptions.auth(AppErrorMessages.captchaFailed);
      case 'reauthentication_needed':
        return const SupabaseExceptions.auth(AppErrorMessages.reauthNeeded);
      case 'sso_provider_not_found':
        return const SupabaseExceptions.auth(AppErrorMessages.ssoNotFound);
      default:
        return SupabaseExceptions.auth(e.message);
    }
  }

  static SupabaseExceptions _mapPostgrestError(PostgrestException e) {
    switch (e.code) {
      case '22P02': // Invalid input syntax (The UUID error you saw)
      case '22007': // Invalid datetime format
        return const SupabaseExceptions.platform(AppErrorMessages.invalidFormat);

      case '23505': // Unique violation
        return const SupabaseExceptions.platform(AppErrorMessages.resourceExists);

      case '23503': // Foreign key violation
        return const SupabaseExceptions.platform(AppErrorMessages.badRequest);

      case '42P01': // Undefined table
        return const SupabaseExceptions.unexpected('خطأ داخلي في قاعدة البيانات');

      default:
        return SupabaseExceptions.platform(e.message);
    }
  }

  static SupabaseExceptions _mapStorageError(StorageException e) {
    switch (e.statusCode) {
      case 'NoSuchBucket':
        return const SupabaseExceptions.storage(AppErrorMessages.bucketNotFound);
      case 'NoSuchKey':
        return const SupabaseExceptions.storage(AppErrorMessages.fileNotFound);
      case 'NoSuchUpload':
        return const SupabaseExceptions.storage(AppErrorMessages.uploadNotFound);
      case 'InvalidJWT':
        return const SupabaseExceptions.storage(AppErrorMessages.badJwt);
      case 'InvalidRequest':
        return const SupabaseExceptions.storage(AppErrorMessages.malformedRequest);
      case 'EntityTooLarge':
        return const SupabaseExceptions.storage(AppErrorMessages.entityTooLarge);
      case 'ResourceAlreadyExists':
        return const SupabaseExceptions.storage(AppErrorMessages.resourceExists);
      default:
        return SupabaseExceptions.storage(e.message);
    }
  }

  static SupabaseExceptions _mapRealtimeError(Object e) {
    final msg = e.toString();
    if (msg.contains('ChannelRateLimitReached')) {
      return const SupabaseExceptions.realtime(AppErrorMessages.rateLimitReached);
    }
    if (msg.contains('ClientJoinRateLimitReached')) {
      return const SupabaseExceptions.realtime(AppErrorMessages.joinLimitReached);
    }
    if (msg.contains('DatabaseConnectionIssue')) {
      return const SupabaseExceptions.realtime(AppErrorMessages.dbConnectionIssue);
    }
    if (msg.contains('Unauthorized')) {
      return const SupabaseExceptions.realtime(AppErrorMessages.unauthorizedRealtime);
    }
    return SupabaseExceptions.realtime(msg);
  }

  static SupabaseExceptions fromHttpStatus(int status, {String? message}) {
    switch (status) {
      case 402:
        return const SupabaseExceptions.platform(AppErrorMessages.paymentRequired);
      case 540:
        return const SupabaseExceptions.platform(AppErrorMessages.projectPaused);
      case 544:
        return const SupabaseExceptions.platform(AppErrorMessages.gatewayTimeout);
      default:
        return SupabaseExceptions.platform(message ?? AppErrorMessages.unknownError);
    }
  }
}
