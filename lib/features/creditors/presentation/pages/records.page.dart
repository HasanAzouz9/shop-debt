import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditors_search_bar.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_form_dialog.dart';
import 'package:shop_debts/features/creditors/presentation/pages/invoices.page.dart';

import '../organisms/creditors_list.dart';
import '../organisms/records_card.dart';

class RecordsPage extends StatelessWidget {
  const RecordsPage({super.key});
  static const routeName = 'records_page';
  static const routePath = '/records_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.recordsLabel),
          centerTitle: true,
        ),
        body: Padding(
          padding: context.padding16,
          child: Column(
            spacing: 16,
            crossAxisAlignment: .start,
            children: [
              const RecordsCard(),
              Row(
                spacing: 16,
                children: [
                  const SizedBox.shrink(),
                  AppIconButton(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => const CreditorFormDialog(),
                    ),
                    icon: Icons.person_add,
                  ),
                  AppIconButton(
                    onTap: () => context.pushNamed(InvoicesPage.routeName),
                    icon: Icons.receipt_long,
                  ),
                ],
              ),
              const CreditorsSearchBar(),
              const CreditorsList(),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
