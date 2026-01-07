import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
// ignore: depend_on_referenced_packages
import 'package:path_provider/path_provider.dart';

import '../../config/const/exception_messages.dart';
import 'custom_exception.dart';

part 'local_exceptions.freezed.dart';

@freezed
class LocalExceptions with _$LocalExceptions implements CustomException {
  const factory LocalExceptions.readError(String message) = ReadErrorException;
  const factory LocalExceptions.writeError(String message) = WriteErrorException;
  const factory LocalExceptions.deleteError(String message) = DeleteErrorException;
  const factory LocalExceptions.notFound(String message) = NotFoundException;
  const factory LocalExceptions.permissionDenied(String message) = PermissionDeniedException;
  const factory LocalExceptions.formatError(String message) = FormatErrorException;
  const factory LocalExceptions.unexpectedError(String message) = UnexpectedErrorException;

  factory LocalExceptions.handleException(Exception exception) {
    switch (exception.runtimeType) {
      case const (FileSystemException):
        final osError = (exception as FileSystemException).osError?.message.toLowerCase() ?? '';
        if (osError.contains('permission denied')) {
          return const LocalExceptions.permissionDenied(
            AppErrorMessages.permissionDenied,
          );
        } else if (osError.contains('no such file') || osError.contains('not found')) {
          return const LocalExceptions.notFound(AppErrorMessages.notFoundLocal);
        } else if (osError.contains('read')) {
          return const LocalExceptions.readError(AppErrorMessages.readError);
        } else if (osError.contains('write')) {
          return const LocalExceptions.writeError(AppErrorMessages.writeError);
        } else if (osError.contains('delete')) {
          return const LocalExceptions.deleteError(
            AppErrorMessages.deleteError,
          );
        }
        return const LocalExceptions.unexpectedError(
          AppErrorMessages.unexpectedError,
        );

      case const (FormatException):
      case const (JsonUnsupportedObjectError):
        return const LocalExceptions.formatError(AppErrorMessages.formatError);

      case const (TypeError):
      case const (StateError):
        return const LocalExceptions.notFound(AppErrorMessages.notFoundLocal);

      case const (HiveError):
        return const LocalExceptions.unexpectedError(
          AppErrorMessages.unexpectedError,
        );

      case const (PlatformException):
        return const LocalExceptions.unexpectedError(
          AppErrorMessages.unexpectedError,
        );

      case const (MissingPlatformDirectoryException):
        return const LocalExceptions.notFound(AppErrorMessages.notFoundLocal);

      default:
        final message = exception.toString().toLowerCase();
        if (message.contains('permission denied')) {
          return const LocalExceptions.permissionDenied(
            AppErrorMessages.permissionDenied,
          );
        } else if (message.contains('format')) {
          return const LocalExceptions.formatError(
            AppErrorMessages.formatError,
          );
        } else if (message.contains('no such file') || message.contains('not found')) {
          return const LocalExceptions.notFound(AppErrorMessages.notFoundLocal);
        } else if (message.contains('read')) {
          return const LocalExceptions.readError(AppErrorMessages.readError);
        } else if (message.contains('write')) {
          return const LocalExceptions.writeError(AppErrorMessages.writeError);
        } else if (message.contains('delete')) {
          return const LocalExceptions.deleteError(
            AppErrorMessages.deleteError,
          );
        }
        return const LocalExceptions.unexpectedError(
          AppErrorMessages.unexpectedError,
        );
    }
  }
}
