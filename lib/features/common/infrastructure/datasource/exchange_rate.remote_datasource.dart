import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shop_debts/services/dio_services/dio_client.dart';

class ExchangeRateRemoteDatasource {
  static final provider = Provider((ref) => ExchangeRateRemoteDatasource(dio: ref.watch(dioClientProvider)));
  final DioClient dio;

  ExchangeRateRemoteDatasource({required this.dio});

  Future<double> getExchangeRate() async {
    final String url = "${dotenv.env['CURRENCY_FREAKS_URI']!}&symbols=SYP";
    final response = await dio.get(url);
    final rates = response.data['rates'];
    final sypRate = rates['SYP'];

    return double.tryParse(sypRate.toString()) ?? 0.0;
  }
}
