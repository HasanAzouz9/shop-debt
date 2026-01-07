import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/config/app_routs.dart';
import 'package:shop_debts/config/theme/theme.dart';

import 'config/theme/utils.dart';

class ShopDebts extends ConsumerWidget {
  const ShopDebts({super.key});

  ThemeData _buildTheme(BuildContext context, bool isDark) {
    final textTheme = createTextTheme(context);
    final theme = MaterialTheme(textTheme);

    return isDark ? theme.dark() : theme.light();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final routes = ref.watch(routeProvider);

    return ResponsiveSizer(
      builder:
          (
            BuildContext context,
            Orientation orientation,
            ScreenType screenType,
          ) {
            // final lightThemeData = _buildTheme(context, false);

            final darkThemeData = _buildTheme(context, true);

            return MaterialApp.router(
              title: 'Shop Debts',
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                GlobalCupertinoLocalizations.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              supportedLocales: const [Locale('ar', '')],
              locale: const Locale('ar', ''),
              theme: darkThemeData,

              darkTheme: darkThemeData,

              themeMode: ThemeMode.system,

              routerConfig: routes,
            );
          },
    );
  }
}
