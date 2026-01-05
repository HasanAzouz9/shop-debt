import 'package:shop_debts/core/result/result.model.dart';

abstract class ExchangeRateRepositoryInterface {
  Future<Result<double>> getExchangeRate();
}
