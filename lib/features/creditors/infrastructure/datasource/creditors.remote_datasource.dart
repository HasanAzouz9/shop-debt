import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/domain/models/creditor.entity.dart';
import 'package:shop_debts/services/remote_storage/remote_storage.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CreditorsRemoteDatasource {
  static final provider = Provider<CreditorsRemoteDatasource>(
    (ref) => CreditorsRemoteDatasource(client: ref.watch(supabaseClientProvider)),
  );
  final SupabaseClient client;

  CreditorsRemoteDatasource({required this.client});

  Future<List<CreditorEntity>> getAll({String? name}) async {
    List<Map<String, dynamic>> query = [];
    if (name != null) {
      query = await client.from('creditors').select().ilike('name', '%$name%').order('name', ascending: false);
    }
    if (name == null) {
      query = await client.from('creditors').select().order('name', ascending: false);
    }
    final creditors = query.map((e) => CreditorEntity.fromJson(e)).toList();
    return creditors;
  }

  Future<void> add({required CreditorEntity creditor}) async {
    await client.from('creditors').insert({
      'name': creditor.name.toLowerCase().trim(),
      'phone_number': creditor.phoneNumber,
      'notes': creditor.notes,
      'current_balance': 0.0,
    });
  }

  Future<void> edit({required String creditorId, String? name, int? phoneNumber}) async {
    if (name != null && name.isNotEmpty) {
      await client.from('creditors').update({'name': name}).eq('id', creditorId);
    }
    if (phoneNumber != null) {
      await client.from('creditors').update({'phone_number': phoneNumber}).eq('id', creditorId);
    }
  }

  Future<bool> nameExistValidation({required String name}) async {
    final lowerCaseInputName = name.toLowerCase().trim();
    final names = await client.from('creditors').select('name').eq('name', lowerCaseInputName);
    return names.isNotEmpty;
  }

  Future<void> addNote({required String creditorId, required String newNote}) async {
    await client.rpc(
      'add_creditor_note',
      params: {
        'creditor_id_in': creditorId,
        'new_note_in': newNote,
      },
    );
  }

  Future<void> removeNote({required String creditorId, required String note}) async {
    await client.rpc(
      'remove_creditor_note',
      params: {
        'creditor_id_in': creditorId,
        'note_to_remove': note,
      },
    );
  }

  Future<List<String>> getNotes({required String creditorId}) async {
    final response = await client.from('creditors').select('notes').eq('id', creditorId).single();
    final notes = response['notes'];
    if (notes == null) return [];

    return List<String>.from(notes);
  }
}
