import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PaginatedList extends ConsumerWidget {
  final Widget child;
  final Function()? onNotification;
  const PaginatedList({
    super.key,
    required this.child,
    required this.onNotification,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return NotificationListener<ScrollNotification>(
      onNotification: (ScrollNotification scrollInfo) {
        if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent * 0.9) {
          onNotification!.call();
        }
        return false;
      },
      child: child,
    );
  }
}
