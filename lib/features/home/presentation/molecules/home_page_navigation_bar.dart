import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_text_button.dart';

import '../../../../core/extensions/app_dimensions.extension.dart';
import '../../../../core/extensions/context.extensions.dart';
import '../../../common/application/exchange_rate_converter.dart';
import '../pages/set_exchange_rate.page.dart';

class MainShellScreen extends ConsumerWidget {
  final StatefulNavigationShell navigationShell;
  const MainShellScreen({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final exchangeState = ref.watch(ExchangeRateConverter.provider);
    final bool hasSetRate = exchangeState.hasSetRate;

    // Logic: If rate isn't set, we force the SetExchangeRatePage
    // and hide the Navigation Bar entirely.
    if (!hasSetRate) {
      return const Scaffold(
        body: SetExchangeRatePage(),
      );
    }

    // If rate is set, show the Shell (Tabs) + Custom Navigation Bar
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: CustomShellNavigationBar(navigationShell: navigationShell),
      resizeToAvoidBottomInset: false,
    );
  }
}

final navIndexProvider = StateProvider.autoDispose<int>((ref) => 1);

class CustomShellNavigationBar extends StatelessWidget {
  final StatefulNavigationShell navigationShell;

  const CustomShellNavigationBar({super.key, required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    Widget navItem({
      required String label,
      required int index,
    }) {
      final isSelected = navigationShell.currentIndex == index;

      return AppTextButton(
        onTap: () => navigationShell.goBranch(
          index,
          // initialLocation: index == navigationShell.currentIndex,
          initialLocation: true,
        ),
        label: label,
        labelColor: isSelected ? context.colorScheme.onPrimaryContainer : context.colorScheme.outline,
      );
    }

    return Container(
      padding: context.padding16,
      color: context.colorScheme.primaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(label: 'الزبائن', index: 0),
          navItem(label: 'المعاملات', index: 1),
          navItem(label: 'السجل', index: 2),
        ],
      ),
    );
  }
}
