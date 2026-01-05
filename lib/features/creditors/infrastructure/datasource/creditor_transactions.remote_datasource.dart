import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/enum/transaction_type.enum.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor_transaction.entity.dart';
import 'package:supabase/supabase.dart';

import '../../../../services/remote_storage/remote_storage.dart';

class CreditorTransactionsRemoteDatasource {
  static final provider = Provider<CreditorTransactionsRemoteDatasource>(
    (ref) => CreditorTransactionsRemoteDatasource(
      client: ref.watch(supabaseClientProvider),
    ),
  );
  final SupabaseClient client;

  CreditorTransactionsRemoteDatasource({required this.client});

  Future<List<CreditorTransactionEntity>> getAll({int? lastCursor, TransactionType? type, String? creditorId}) async {
    List<Map<String, dynamic>> query = [];

    if (type == null && creditorId == null) {
      query = await client
          .from('creditor_transactions')
          .select('*, creditors(*)')
          .lt('id', lastCursor ?? 99999999999999)
          .order('id')
          .limit(10);
    }

    if (creditorId != null && creditorId.isNotEmpty) {
      query = await client
          .from('creditor_transactions')
          .select('* , creditors(*)')
          .eq('creditor_id', creditorId)
          .lt('id', lastCursor ?? 10000000000000000)
          .order('id')
          .limit(10);
    }

    if (type != null) {
      query = await client
          .from('creditor_transactions')
          .select('* , creditors(*)')
          .eq('type', type.name)
          .lt('id', lastCursor ?? 10000000000000000)
          .order('id')
          .limit(10);
    }

    final response = query.map((e) => CreditorTransactionEntity.fromJson(e)).toList();
    return response;
  }

  Future<double> getCreditorsTransactionsTotal() async {
    final data = await client.from('creditor_transactions').select().order('id', ascending: false).limit(1);
    if (data.isEmpty) {
      return 0.0;
    }
    final transaction = CreditorTransactionEntity.fromJson(data.last);

    return transaction.getTransactionsTotal;
  }

  Future<void> add({required String creditorId, required double amount, String? note}) async {
    await client.from('creditor_transactions').insert({
      'creditor_id': creditorId,
      'type': TransactionType.payment.name,
      'amount': amount,
      'note': note,
    });
  }
}
