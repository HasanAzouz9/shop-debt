import 'dart:developer';

import 'package:riverpod/riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Assuming you are on Riverpod 2.0 or later
class CustomX extends ProviderObserver {
  @override
  void didAddProvider(
    // Type changed from ProviderBase to ProviderOrFamily
    ProviderOrFamily provider,
    Object? value,
    ProviderContainer container,
  ) {
    log('**ADD** $provider: $value');
    // Removed super call (optional, but cleaner)
  }

  @override
  void didUpdateProvider(
    // Type changed from ProviderBase to ProviderOrFamily
    ProviderOrFamily provider,
    Object? previousValue,
    Object? newValue,
    // ProviderContainer is now the fourth argument
    ProviderContainer container,
  ) {
    log('**UPDATE** $provider: $newValue');
    // Removed super call (optional, but cleaner)
  }

  @override
  void didDisposeProvider(
    ProviderOrFamily provider,
    ProviderContainer container,
  ) {
    log('**DISPOSE** $provider');
  }
}
