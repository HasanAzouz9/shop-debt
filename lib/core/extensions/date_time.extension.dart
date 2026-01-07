// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  bool isToday() {
    return day == DateTime.now().day && month == DateTime.now().month && year == DateTime.now().year;
  }

  DateTime startOfDay() {
    return DateTime(year, month, day);
  }

  DateTime endOfNextDay() {
    final nextDay = DateTime(year, month, day).add(const Duration(days: 1));
    return nextDay;
  }

  String yyyyMMddFormat() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String EFormat(BuildContext context) {
    final locale = Localizations.localeOf(context).toString();

    return '${DateFormat('E', locale).format(this)} / ${DateFormat('dd-MM-yyyy').format(this)}';
  }
}
