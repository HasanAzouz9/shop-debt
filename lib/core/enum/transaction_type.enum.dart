import 'package:flutter/material.dart';

enum TransactionType {
  payment(color: Colors.green),
  debt(color: Colors.red)
  ;

  const TransactionType({required this.color});
  final Color color;
}
