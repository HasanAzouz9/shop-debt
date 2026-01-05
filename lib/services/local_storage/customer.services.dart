import 'package:hive/hive.dart';
import 'package:riverpod/riverpod.dart';

import '../../features/customers_transactions/domain/models/customer.entity.dart';

final customersLocalStorageServiceProvider = FutureProvider<Box<CustomerEntity>>((ref) async {
  Box<CustomerEntity> customersBox;

  if (!Hive.isBoxOpen('customers')) {
    customersBox = await Hive.openBox('customers');
  } else {
    customersBox = await Hive.openBox('customers');
  }

  return customersBox;
});
