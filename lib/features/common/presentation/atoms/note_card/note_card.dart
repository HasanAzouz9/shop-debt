import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../../core/extensions/context.extensions.dart';

class NoteCard extends StatelessWidget {
  final String note;
  const NoteCard({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding16,
      margin: context.paddingBottom16,
      width: 98.w,
      decoration: const BoxDecoration().copyWith(
        color: context.colorScheme.secondaryContainer,
        borderRadius: context.radius8,
        border: Border(right: BorderSide(width: 3, color: context.colorScheme.primary)),
      ),
      child: Text(note),
    );
  }
}
