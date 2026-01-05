import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>((ref) {
  return Dio(
    BaseOptions(
      baseUrl: '',
      contentType: Headers.jsonContentType,
      validateStatus: (status) => status != null,
      queryParameters: {'apiKey': dotenv.env['CURRENCY_FREAKS_KEY']!},
    ),
  );
});
