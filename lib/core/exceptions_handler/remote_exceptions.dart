import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../config/const/exception_messages.dart';
import 'custom_exception.dart';

part 'remote_exceptions.freezed.dart';

@freezed
class RemoteExceptions with _$RemoteExceptions implements CustomException {
  const factory RemoteExceptions.cancelled(String message) = CancelledException;

  const factory RemoteExceptions.connectionTimeout(String message) = ConnectionTimeoutException;
  const factory RemoteExceptions.receiveTimeout(String message) = ReceiveTimeoutException;
  const factory RemoteExceptions.sendTimeout(String message) = SendTimeoutException;
  const factory RemoteExceptions.connectionError(String message) = ConnectionErrorException;
  const factory RemoteExceptions.badCertificate(String message) = BadCertificateException;
  const factory RemoteExceptions.verifyInternetConnection(String message) = VerifyInternetConnectionException;
  const factory RemoteExceptions.unexpectedError(String message) = UnexpectedErrorException;
  const factory RemoteExceptions.badResponse(String message) = BadResponseException;
  const factory RemoteExceptions.badResponseBadRequest(String message) = BadResponseExceptionBadRequest;
  const factory RemoteExceptions.badResponseAuthenticationFailure(
    String message,
  ) = BadResponseExceptionAuthenticationFailure;
  const factory RemoteExceptions.badResponseNotAuthorized(String message) = BadResponseExceptionNotAuthorized;
  const factory RemoteExceptions.badResponseNotFound(String message) = BadResponseExceptionNotFound;
  const factory RemoteExceptions.badResponseOperationNotAllowed(
    String message,
  ) = BadResponseExceptionOperationNotAllowed;
  const factory RemoteExceptions.badResponseUnsupported(String message) = BadResponseExceptionUnsupported;
  const factory RemoteExceptions.badResponseValidationFailure(String message) = BadResponseExceptionValidationFailure;
  const factory RemoteExceptions.badResponseTooManyRequests(String message) = BadResponseExceptionTooMuchRequests;
  const factory RemoteExceptions.badResponseServerError(String message) = BadResponseExceptionServerError;
  const factory RemoteExceptions.badResponseServiceUnavailable(String message) = BadResponseExceptionServiceUnavailable;
  const factory RemoteExceptions.formatError(String message) = FormatErrorException;

  factory RemoteExceptions.handleException(Exception exception) {
    if (exception is DioException) {
      switch (exception.type) {
        case DioExceptionType.cancel:
          return const RemoteExceptions.cancelled(
            AppErrorMessages.requestCancelled,
          );

        case DioExceptionType.connectionTimeout:
          return const RemoteExceptions.connectionTimeout(
            AppErrorMessages.connectionTimeoutError,
          );
        case DioExceptionType.receiveTimeout:
          return const RemoteExceptions.receiveTimeout(
            AppErrorMessages.receiveTimeout,
          );

        case DioExceptionType.sendTimeout:
          return const RemoteExceptions.sendTimeout(
            AppErrorMessages.sendTimeout,
          );

        case DioExceptionType.connectionError:
          return const RemoteExceptions.connectionError(
            AppErrorMessages.connectionError,
          );

        case DioExceptionType.badCertificate:
          return const RemoteExceptions.badCertificate(
            AppErrorMessages.badCertificate,
          );

        case DioExceptionType.unknown:
          if (exception.error.toString().contains('SocketException')) {
            return const RemoteExceptions.verifyInternetConnection(
              AppErrorMessages.verifyInternetConnection,
            );
          } else {
            return const RemoteExceptions.unexpectedError(
              AppErrorMessages.unexpectedNetworkError,
            );
          }

        case DioExceptionType.badResponse:
          switch (exception.response?.statusCode) {
            case 400:
              return const RemoteExceptions.badResponseBadRequest(
                AppErrorMessages.badRequest,
              );

            case 401:
              return const RemoteExceptions.badResponseAuthenticationFailure(
                AppErrorMessages.authenticationFailure,
              );

            case 403:
              return const RemoteExceptions.badResponseNotAuthorized(
                AppErrorMessages.notAuthorized,
              );

            case 404:
              return const RemoteExceptions.badResponseNotFound(
                AppErrorMessages.notFound404,
              );

            case 405:
              return const RemoteExceptions.badResponseOperationNotAllowed(
                AppErrorMessages.notAllowed,
              );

            case 415:
              return const RemoteExceptions.badResponseUnsupported(
                AppErrorMessages.unsupported,
              );

            case 422:
              return const RemoteExceptions.badResponseValidationFailure(
                AppErrorMessages.validationFailure,
              );

            case 429:
              return const RemoteExceptions.badResponseTooManyRequests(
                AppErrorMessages.tooManyRequests,
              );

            case 500:
              return const RemoteExceptions.badResponseServerError(
                AppErrorMessages.internalServerError,
              );

            case 503:
              return const RemoteExceptions.badResponseServiceUnavailable(
                AppErrorMessages.serviceUnavailable,
              );

            default:
              return const RemoteExceptions.unexpectedError(
                AppErrorMessages.unexpectedNetworkError,
              );
          }
      }
    } else if (exception is FormatErrorException) {
      return RemoteExceptions.formatError(exception.message);
    } else {
      return const RemoteExceptions.unexpectedError(
        AppErrorMessages.unexpectedNetworkError,
      );
    }
  }
}
