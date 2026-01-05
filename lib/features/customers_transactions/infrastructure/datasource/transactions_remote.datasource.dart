import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';
import 'package:shop_debts/services/remote_storage/remote_storage.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../../domain/state/customer_transactions_filter.state.dart';

class TransactionsRemoteDatasource {
  static final provider = Provider<TransactionsRemoteDatasource>(
    (ref) => TransactionsRemoteDatasource(
      supabaseClient: ref.watch(supabaseClientProvider),
    ),
  );

  final SupabaseClient supabaseClient;

  TransactionsRemoteDatasource({required this.supabaseClient});

  Future<void> add({required TransactionEntity transaction}) async {
    await supabaseClient.from('transactions').insert({
      'customer_id': transaction.getCustomerId,
      'amount': transaction.amount,
      'type': transaction.type.name,
      'note': transaction.note,
    });
  }

  Future<List<TransactionEntity>> getAll({
    required DateTime? lastCursor,

    CustomerTransactionsFilterState? filter,
  }) async {
    var request = supabaseClient.from('transactions').select('*, customers(*)');

    if (filter != null) {
      if (filter.transactionType != null) request = request.eq('type', filter.transactionType!.name);

      if (filter.customerId != null && filter.customerId!.isNotEmpty) {
        request = request.eq('customer_id', filter.customerId!);
      }

      if (filter.createdAt != null) {
        final startOfDay = DateTime(
          filter.createdAt!.year,
          filter.createdAt!.month,
          filter.createdAt!.day,
        ).toIso8601String();
        final endOfDay = DateTime(
          filter.createdAt!.year,
          filter.createdAt!.month,
          filter.createdAt!.day,
          23,
          59,
          59,
        ).toIso8601String();
        request = request.gte('created_at', startOfDay).lte('created_at', endOfDay);
      }
    }

    final cursor = lastCursor?.toIso8601String() ?? DateTime.now().toIso8601String();

    final response = await request.lt('created_at', cursor).order('created_at', ascending: false).limit(20);

    return (response as List).map((json) => TransactionEntity.fromJson(json)).toList();
  }

  Future<double> getTotal() async {
    final response = await supabaseClient.from('transactions').select().order('created_at', ascending: false).limit(1);

    if (response.isEmpty) {
      return 0.0;
    }
    final transaction = TransactionEntity.fromJson(response.last);

    return transaction.getTransactionsTotal;
  }
}
