import 'package:hive/hive.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';

import '../../../../services/local_storage/customer.services.dart';
import '../../domain/models/customer.entity.dart';

class CustomersLocalDatasource {
  static final provider = Provider<CustomersLocalDatasource>(
    (ref) => CustomersLocalDatasource(
      customersBox: ref.watch(customersLocalStorageServiceProvider).value!,
    ),
  );
  final Box<CustomerEntity> customersBox;

  CustomersLocalDatasource({required this.customersBox});

  Future<List<CustomerEntity>> getAll() async {
    return customersBox.values.toList();
  }

  Future<void> add({required CustomerEntity customer}) async {
    await customersBox.put(customer.getId, customer);
  }

  Future<String> getCustomerName({required String id}) async {
    final customer = customersBox.get(id);
    return customer!.name;
  }

  Future<void> addTransaction({required TransactionEntity transaction}) async {
    final customer = customersBox.get(transaction.getCustomerId);
    customersBox.put(customer!.getId, customer);
  }
}
