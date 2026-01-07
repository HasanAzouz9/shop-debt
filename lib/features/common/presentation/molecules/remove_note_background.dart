import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../core/extensions/context.extensions.dart';

class RemoveNoteBackground extends StatelessWidget {
  final bool isLoading;
  const RemoveNoteBackground({super.key, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: context.padding16,
      margin: context.paddingBottom16,
      width: 98.w,
      decoration: const BoxDecoration().copyWith(
        color: context.colorScheme.error,
        borderRadius: context.radius8,
      ),
      child: isLoading
          ? const Center(child: Text(AppConstants.loadingMessage))
          : const Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Icon(Icons.delete, color: Colors.white),
                Icon(Icons.delete, color: Colors.white),
              ],
            ),
    );
  }
}
