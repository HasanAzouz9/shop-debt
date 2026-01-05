import 'package:intl/intl.dart';

extension NumberFormatter on double {
  String compact() {
    const String pattern = '#,##0; - #,##0';

    final formatter = NumberFormat(
      pattern,
    );

    formatter.maximumFractionDigits = 0;

    return formatter.format(this);
  }
}
