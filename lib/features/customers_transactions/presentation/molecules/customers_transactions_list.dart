import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/features/customers_transactions/presentation/molecules/un_named_customer_transaction_card.dart';

import '../../../../core/exceptions_handler/custom_exception.dart';
import '../../../../core/extensions/object.extensions.dart';
import '../../../common/presentation/molecules/centered_loading_message.dart';
import '../../../common/presentation/molecules/exception_card_with_refresh.dart';
import '../../../common/presentation/molecules/list_footer.dart';
import '../../application/get_all_transaction.controller.dart';
import '../../domain/models/transaction.entity.dart';
import 'named_customer_transaction_card.dart';

class CustomersTransactionsList extends ConsumerStatefulWidget {
  final String? customerId;
  const CustomersTransactionsList({super.key, this.customerId});

  static final transactionProvider = Provider<TransactionEntity>((ref) => throw UnimplementedError());

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CustomersTransactionsListState();
}

class _CustomersTransactionsListState extends ConsumerState<CustomersTransactionsList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScroll);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final transactionsState = ref.watch(GetAllTransactionsController.provider(widget.customerId));

    return transactionsState.when(
      initial: () => const CenteredLoadingMessage(),
      error: (error) => _errorMessage(error),
      data: (transactions, hasMore, isLoading, error) {
        return ListView.builder(
          controller: _scrollController,
          itemCount: transactions.length + 1,
          itemBuilder: (ctx, i) {
            if (i == transactions.length) {
              if (isLoading) return const CenteredLoadingMessage();
              if (error != null) return _errorMessage(error);
              return ListFooter(hasMore: hasMore, isEmpty: transactions.isEmpty);
            }

            return ProviderScope(
              overrides: [CustomersTransactionsList.transactionProvider.overrideWithValue(transactions[i])],
              child: widget.customerId == null
                  ? const NamedCustomerTransactionCard()
                  : const UnNamedCustomerTransactionCard(),
            );
          },
        );
      },
    );
  }

  void _onScroll() {
    if (_scrollController.position.pixels >= _scrollController.position.maxScrollExtent * 0.95) {
      final state = ref.read(GetAllTransactionsController.provider(null));

      state.maybeWhen(
        data: (transactions, hasMore, isLoading, error) {
          if (hasMore && !isLoading) {
            ref.read(GetAllTransactionsController.provider(null).notifier).loadNextPage();
          }
        },
        orElse: () {},
      );
    }
  }

  Center _errorMessage(CustomException error) {
    return Center(
      child: ErrorMessageWithAction(
        errorMessage: (error.getErrorMessage),
        action: () => ref.invalidate(GetAllTransactionsController.provider),
      ),
    );
  }
}
