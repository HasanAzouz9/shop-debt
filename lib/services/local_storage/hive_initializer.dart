import 'package:hive_flutter/adapters.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/enum/transaction_type.adapter.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/transaction.entity.dart';

import '../../features/customers_transactions/domain/models/customer.entity.dart';

final hiveInitializerProvider = FutureProvider((ref) async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(TransactionTypeAdapter().typeId)) {
    Hive.registerAdapter(TransactionTypeAdapter());
  }
  if (!Hive.isAdapterRegistered(TransactionEntityAdapter().typeId)) {
    Hive.registerAdapter(TransactionEntityAdapter());
  }
  if (!Hive.isAdapterRegistered(CustomerEntityAdapter().typeId)) {
    Hive.registerAdapter(CustomerEntityAdapter());
  }
});
