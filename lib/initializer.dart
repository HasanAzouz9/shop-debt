import 'package:flutter/material.dart';

import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/services/dio_services/dio_initializer.dart';
import 'package:shop_debts/services/local_storage/customer.services.dart';
import 'package:shop_debts/services/local_storage/hive_initializer.dart';
import 'package:shop_debts/services/logging.services.dart';

Future<ProviderContainer> initialize() async {
  WidgetsFlutterBinding.ensureInitialized();
  final ProviderContainer container = ProviderContainer(observers: [CustomX()]);
  await container.read(hiveInitializerProvider.future);
  await container.read(customersLocalStorageServiceProvider.future);
  container.read(dioProvider);
  return container;
}
