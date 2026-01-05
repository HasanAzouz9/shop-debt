import 'package:flutter/material.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/context.extensions.dart';

class ListFooter extends StatelessWidget {
  final bool hasMore;
  final bool isEmpty;

  const ListFooter({
    super.key,
    required this.hasMore,
    required this.isEmpty,
  });

  @override
  Widget build(BuildContext context) {
    if (hasMore) return const SizedBox.shrink();

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          isEmpty ? AppConstants.emptyListMessage : AppConstants.listEndMessage,
          style: context.textTheme.bodyMedium,
        ),
      ),
    );
  }
}
