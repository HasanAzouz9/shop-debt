import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';

part 'customers_pagination_state.freezed.dart';

@freezed
class CustomersPaginationState with _$CustomersPaginationState {
  const factory CustomersPaginationState({
    @Default([]) List<CustomerEntity> customers,
    @Default(0) offset,
    @Default(15) limit,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasMore,
    String? name,
  }) = _CustomersPaginationState;
}
