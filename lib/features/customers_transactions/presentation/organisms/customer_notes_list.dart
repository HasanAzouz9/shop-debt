import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/features/common/presentation/molecules/empty_cat_card.dart';
import 'package:shop_debts/features/common/presentation/molecules/loading_cat_card.dart';

import '../../../../core/extensions/object.extensions.dart';
import '../../../common/presentation/molecules/exception_card_with_refresh.dart';
import '../../application/customer_provider.dart';
import '../../application/get_customer_notes.controller.dart';
import '../molecules/customer_note_card.dart';
import '../pages/customer_details.page.dart';

class CustomerNotesList extends ConsumerWidget {
  const CustomerNotesList({super.key});
  static final noteProvider = Provider<String>((ref) => throw UnimplementedError());

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final customerId = ref.watch(CustomerDetailsPage.currentCustomerIdProvider);

    final notes = ref.watch(GetCustomerNotesController.provider(customerId));

    return notes.when(
      data: (data) => data.isEmpty
          ? const EmptyCatCard()
          : ListView.builder(
              itemCount: data.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, i) {
                return ProviderScope(
                  overrides: [noteProvider.overrideWithValue(data[i])],
                  child: const CustomerNoteCard(),
                );
              },
            ),
      error: (error, stackTrace) => ErrorMessageWithAction(
        errorMessage: error.getErrorMessage,
        action: () => ref.invalidate(customerProvider(customerId)),
      ),
      loading: () => const Center(
        child: LoadingCatCard(),
      ),
    );
  }
}
