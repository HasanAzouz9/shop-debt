import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../../core/enum/creditor_details_page.enum.dart';
import '../../../../core/extensions/context.extensions.dart';

class CreditorDetailsOptionsBar extends ConsumerWidget {
  final PageController pageController;
  const CreditorDetailsOptionsBar({super.key, required this.pageController});
  static final pageIndexProvider = StateProvider.autoDispose<int>((ref) => 0);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentIndex = ref.watch(CreditorDetailsOptionsBar.pageIndexProvider);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: CreditorDetailsPageEnum.values.map((item) {
        final bool isSelected = currentIndex == item.pageIndex;

        return GestureDetector(
          onTap: () => pageController.animateToPage(
            item.pageIndex,
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Column(
              mainAxisSize: .min,
              spacing: 10,
              children: [
                Text(
                  item.label,
                  style: context.textTheme.bodyLarge,
                ),
                if (isSelected)
                  Container(
                    decoration: const BoxDecoration().copyWith(
                      color: context.colorScheme.primary,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    width: 15.w,
                    height: 2,
                  ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
