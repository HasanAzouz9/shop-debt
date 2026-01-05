import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.model.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success({required T data}) = Success<T>;
  const factory Result.failure({required Exception failure}) = Failure<T>;

  static Result<T> guard<T>(T Function() body) {
    try {
      return Result.success(data: body());
    } on Exception catch (failure) {
      return Result.failure(failure: failure);
    }
  }

  static Future<Result<T>> guardFuture<T>(Future<T> Function() future) async {
    try {
      return Result.success(data: await future());
    } on Exception catch (failure) {
      return Result.failure(failure: failure);
    }
  }
}
