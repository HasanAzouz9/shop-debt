import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/core/exceptions_handler/custom_exception.dart';

part 'pagination_state.freezed.dart';

@Freezed(genericArgumentFactories: true)
class PaginationState<T> with _$PaginationState<T> {
  const factory PaginationState.initial() = Initial<T>;

  const factory PaginationState.data({
    required List<T> data,
    required bool hasMore,
    required bool isLoadingMore,
    CustomException? error,
  }) = Data<T>;

  const factory PaginationState.error({
    required CustomException error,
  }) = Error<T>;
}
