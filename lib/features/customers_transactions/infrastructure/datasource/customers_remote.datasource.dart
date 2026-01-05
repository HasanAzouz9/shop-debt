import 'package:riverpod/riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../../../services/remote_storage/remote_storage.dart';
import '../../domain/models/customer.entity.dart';

class CustomersRemoteDatasource {
  static final provider = Provider<CustomersRemoteDatasource>(
    (ref) => CustomersRemoteDatasource(
      supabaseClient: ref.watch(supabaseClientProvider),
    ),
  );

  final SupabaseClient supabaseClient;
  CustomersRemoteDatasource({required this.supabaseClient});

  Future<List<CustomerEntity>> getAll({
    String? name,
    required int offset,
    required int limit,
  }) async {
    PostgrestFilterBuilder<List<Map<String, dynamic>>> query = supabaseClient.from('customers').select();

    if (name != null && name.isNotEmpty) {
      query = query.ilike('name', '$name%');
    }

    PostgrestTransformBuilder<List<Map<String, dynamic>>> orderedQuery = query.order('name', ascending: true);

    final response = await orderedQuery.range(offset, offset + limit - 1);

    return (response as List<dynamic>).map((json) => CustomerEntity.fromJson(json as Map<String, dynamic>)).toList();
  }

  Future<void> add({required CustomerEntity customer}) async {
    await supabaseClient.from('customers').insert({
      'id': customer.getId,
      'name': customer.name.toLowerCase().trim(),
      'phone_number': customer.phoneNumber,
      'notes': customer.notes,
    });
  }

  Future<CustomerEntity> getById({required String id}) async {
    Map<String, dynamic> customersData = await supabaseClient.from('customers').select().eq('id', id).single();
    CustomerEntity customer = CustomerEntity.fromJson(customersData);
    return customer;
  }

  Future<void> edit({required String customerId, String? newName, String? newPhoneNumber}) async {
    if (newName != null && newName.isNotEmpty) {
      await supabaseClient.from('customers').update({'name': newName}).eq('id', customerId);
    }
    if (newPhoneNumber != null && newPhoneNumber.isNotEmpty) {
      await supabaseClient.from('customers').update({'phone_number': newPhoneNumber}).eq('id', customerId);
    }
  }

  Future<void> addNote({required String customerId, required String newNote}) async {
    await supabaseClient.rpc(
      'append_customer_note',
      params: {'customer_id_in': customerId, 'new_note_in': newNote},
    );
  }

  Future<void> removeNote({
    required String customerId,
    required String note,
  }) async {
    await supabaseClient.rpc(
      'remove_customer_note',
      params: {
        'customer_id_in': customerId,
        'note_to_remove': note,
      },
    );
  }

  // Future<List<String>> getCustomersNames() async {
  //   final names = await supabaseClient.from('customers').select('name');
  //   List<String> namesResponse = names.map((e) => e['name'] as String).toList();

  //   return namesResponse;
  // }

  Future<bool> nameExist({required String name}) async {
    final lowerCaseInputName = name.toLowerCase().trim();
    final names = await supabaseClient.from('customers').select('name').eq('name', lowerCaseInputName);
    return names.isNotEmpty;
  }

  Future<List<String>> getNotes({required String customerId}) async {
    Map<String, dynamic> customersData = await supabaseClient
        .from('customers')
        .select('notes')
        .eq('id', customerId)
        .single();
    final notes = customersData['notes'];
    if (notes == null) return [];

    return List<String>.from(notes);
  }
}
