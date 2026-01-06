import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';

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
      required IconData icon,
      required int index,
    }) {
      final isSelected = navigationShell.currentIndex == index;

      return AppIconButton(
        onTap: () => navigationShell.goBranch(
          index,
          // initialLocation: index == navigationShell.currentIndex,
          initialLocation: true,
        ),
        icon: icon,
        iconColor: isSelected ? context.colorScheme.primary : context.colorScheme.outline,
        iconSize: 28,
      );
    }

    return Padding(
      padding: context.paddingBottom16,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          navItem(icon: Icons.people, index: 0),
          navItem(icon: Icons.payment, index: 1),
          navItem(icon: Icons.request_quote_outlined, index: 2),
        ],
      ),
    );
  }
}
