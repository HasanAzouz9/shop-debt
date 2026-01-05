import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/features/creditors/presentation/pages/records.page.dart';
import 'package:shop_debts/features/creditors/presentation/pages/invoices.page.dart';
import 'package:shop_debts/features/customers_transactions/domain/models/customer.entity.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_details.page.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customer_ledger.page.dart';
import 'package:shop_debts/features/customers_transactions/presentation/pages/customers.page.dart';
import 'package:shop_debts/features/home/presentation/molecules/home_page_navigation_bar.dart';
import 'package:shop_debts/features/creditors/presentation/pages/creditor_details.page.dart';

final routeProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) => MainShellScreen(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: CustomersPage.routePath,
                name: CustomersPage.routeName,
                builder: (context, state) {
                  return const CustomersPage();
                },
                routes: [
                  GoRoute(
                    path: CustomerDetailsPage.routePath,
                    name: CustomerDetailsPage.routeName,
                    pageBuilder: (context, state) {
                      final customer = state.extra as CustomerEntity;
                      return CustomTransitionPage<void>(
                        key: state.pageKey,

                        child: CustomerDetailsPage(
                          customer: customer,
                        ),

                        transitionDuration: const Duration(milliseconds: 350),
                        transitionsBuilder: (context, animation, secondaryAnimation, child) {
                          return FadeTransition(
                            opacity: animation,
                            child: child,
                          );
                        },
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: CustomerLedgerPage.routePath,
                name: CustomerLedgerPage.routeName,
                builder: (context, state) => const CustomerLedgerPage(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: RecordsPage.routePath,
                name: RecordsPage.routeName,
                builder: (context, state) => const RecordsPage(),
                routes: [
                  GoRoute(
                    path: CreditorDetailsPage.routePath,
                    name: CreditorDetailsPage.routeName,
                    builder: (context, state) {
                      return const CreditorDetailsPage();
                    },
                  ),
                  GoRoute(
                    path: InvoicesPage.routePath,
                    name: InvoicesPage.routeName,
                    builder: (context, state) => const InvoicesPage(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
});
