import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/core/result/result.model.dart';
import 'package:shop_debts/features/common/domain/repositories/exchange_rate.repository.interface.dart';
import 'package:shop_debts/features/common/infrastructure/datasource/exchange_rate.remote_datasource.dart';

class ExchangeRateRepositoryImplementation implements ExchangeRateRepositoryInterface {
  static final provider = Provider<ExchangeRateRepositoryImplementation>(
    (ref) => ExchangeRateRepositoryImplementation(datasource: ref.watch(ExchangeRateRemoteDatasource.provider)),
  );
  final ExchangeRateRemoteDatasource datasource;
  ExchangeRateRepositoryImplementation({required this.datasource});

  @override
  Future<Result<double>> getExchangeRate() async {
    return Result.guardFuture(() => datasource.getExchangeRate());
  }
}
