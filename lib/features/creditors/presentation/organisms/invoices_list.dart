import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/exceptions_handler/custom_exception.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';
import 'package:shop_debts/features/common/presentation/molecules/loading_cat_card.dart';
import 'package:shop_debts/features/common/presentation/organisms/list_footer.dart';
import 'package:shop_debts/features/creditors/application/get_all_invoices.controller.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/invoice_card.dart';

class InvoicesList extends ConsumerStatefulWidget {
  const InvoicesList({super.key});
  static final invoiceProvider = Provider<InvoiceEntity>((ref) => throw UnimplementedError());
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _InvoicesListState();
}

class _InvoicesListState extends ConsumerState<InvoicesList> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final invoicesState = ref.watch(GetAllInvoicesController.provider);
    return invoicesState.when(
      initial: () => const LoadingCatCard(),
      error: (error) => _errorMessage(error),
      data: (invoices, hasMore, isLoading, error) {
        return ListView.builder(
          controller: _scrollController,
          itemCount: invoices.length + 1,
          itemBuilder: (ctx, i) {
            if (i == invoices.length) {
              if (isLoading) return const LoadingCatCard();
              if (error != null) return Center(child: _errorMessage(error));
              return ListFooter(hasMore: hasMore, isEmpty: invoices.isEmpty);
            }
            return ProviderScope(
              overrides: [InvoicesList.invoiceProvider.overrideWithValue(invoices[i])],
              child: const InvoiceCard(),
            );
          },
        );
      },
    );
  }

  ErrorMessageWithAction _errorMessage(CustomException error) {
    return ErrorMessageWithAction(
      errorMessage: error.getErrorMessage,
      action: () => ref.invalidate(GetAllInvoicesController.provider),
    );
  }
}
