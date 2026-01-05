import 'package:flutter/material.dart';

import '../../features/creditors/presentation/templates/creditor_info.dart';
import '../../features/creditors/presentation/templates/creditor_notes.dart';
import '../../features/creditors/presentation/templates/creditor_records.dart';

enum CreditorDetailsPageEnum {
  records(page: CreditorRecords(), pageIndex: 0, label: 'السجل'),
  info(page: CreditorInfo(), pageIndex: 1, label: 'المعلومات'),
  notes(page: CreditorNotes(), pageIndex: 2, label: 'ملاحظات'),
  ;

  const CreditorDetailsPageEnum({
    required this.page,
    required this.pageIndex,
    required this.label,
  });

  final Widget page;
  final int pageIndex;
  final String label;
}
