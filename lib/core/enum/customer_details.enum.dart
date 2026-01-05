import 'package:flutter/material.dart';

enum CustomerDetailsPageEnum {
  info(pageIndex: 0, icon: Icons.person_outline_outlined),
  transactions(pageIndex: 1, icon: Icons.payment_rounded),
  addTransaction(pageIndex: 2, icon: Icons.add_card_rounded),
  ;

  const CustomerDetailsPageEnum({
    required this.pageIndex,
    required this.icon,
  });
  final int pageIndex;
  final IconData icon;
}
