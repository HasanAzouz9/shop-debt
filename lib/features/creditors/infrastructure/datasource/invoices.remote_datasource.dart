import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/invoice.entity.dart';
import 'package:shop_debts/services/remote_storage/remote_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class InvoicesRemoteDatasource {
  static final provider = Provider((ref) => InvoicesRemoteDatasource(client: ref.watch(supabaseClientProvider)));
  final SupabaseClient client;

  InvoicesRemoteDatasource({required this.client});

  Future<void> add({required InvoiceEntity invoice}) async {
    await client.from('invoices').insert({
      'creditor_id': invoice.getCreditorId,
      'items': invoice.items.map((e) => e.toJson()).toList(),
      'note': invoice.note,
    });
  }

  Future<List<InvoiceEntity>> getAll({
    int? lastCursor,
    DateTime? createdAt,
    String? creditorId,
    String? itemName,
  }) async {
    List<Map<String, dynamic>> query = [];
    if (createdAt == null && creditorId == null) {
      query = await client
          .from('invoices')
          .select('*,creditors(*)')
          .gt('id', lastCursor ?? 0)
          .order('created_at', ascending: false)
          .limit(10);
    }
    if (itemName != null) {
      query = await client
          .rpc(
            'search_invoices_by_item_name',
            params: {'search_text': itemName},
          )
          .select('*,creditors(*)');
    }

    final response = query.map((e) => InvoiceEntity.fromJson(e)).toList();
    return response;
  }

  Future<InvoiceEntity> getById({required int id}) async {
    final query = await client.from('invoices').select('*,creditors(*)').eq('id', id).single();
    return InvoiceEntity.fromJson(query);
  }
}
