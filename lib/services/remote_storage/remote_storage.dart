// infra/datasource/customers_remote.datasource.dart (or shared/supabase_client_provider.dart)

import 'package:riverpod/riverpod.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

// Provider for the main Supabase client instance
final supabaseClientProvider = Provider<SupabaseClient>((ref) {
  // Assumes Supabase.initialize has been called in main.
  return Supabase.instance.client;
});
