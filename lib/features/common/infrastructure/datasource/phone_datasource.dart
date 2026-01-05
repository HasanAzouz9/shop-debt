import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneDatasource {
  static final provider = Provider<PhoneDatasource>((ref) => PhoneDatasource());
  Future<void> makeCall({required String phoneNumber}) async {
    final Uri uri = Uri(scheme: 'tel', path: phoneNumber);
    await launchUrl(uri);
  }

  Future<void> sendSMS({required String phoneNumber}) async {
    final Uri uri = Uri(scheme: 'sms', path: phoneNumber);
    await launchUrl(uri);
  }
}
