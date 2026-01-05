import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';
import 'package:shop_debts/features/common/presentation/molecules/exception_card_with_refresh.dart';
import 'package:shop_debts/features/creditors/application/get_invoice_by_id.controller.dart';
import 'package:shop_debts/features/creditors/presentation/pages/invoice_details.page.dart';

class AsyncInvoiceDetailsDialog extends ConsumerWidget {
  final int invoiceId;
  const AsyncInvoiceDetailsDialog({super.key, required this.invoiceId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final invoiceAsync = ref.watch(GetInvoiceByIdController.provider(invoiceId));

    return invoiceAsync.when(
      data: (invoice) => InvoiceDetailsDialog(invoice: invoice),
      loading: () => const AlertDialog(
        content: Text(AppConstants.loadingMessage),
      ),
      error: (error, _) => AlertDialog(
        backgroundColor: context.colorScheme.surfaceContainerLow,
        constraints: BoxConstraints.tightFor(height: 18.h),
        content: ErrorMessageWithAction(
          errorMessage: error.getErrorMessage,
          action: () => ref.invalidate(GetInvoiceByIdController.provider(invoiceId)),
        ),
      ),
    );
  }
}
