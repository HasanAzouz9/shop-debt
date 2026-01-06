import 'package:flutter/material.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';

import '../molecules/invoices_item_search_bar.dart';
import '../organisms/invoices_list.dart';

class InvoicesPage extends StatelessWidget {
  const InvoicesPage({super.key});
  static const routeName = 'invoices_page';
  static const routePath = '/invoices_page';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.invoicesLabel),
          forceMaterialTransparency: true,
        ),
        body: Padding(
          padding: context.padding16,
          child: const Column(
            spacing: 16,
            children: [
              InvoicesItemSearchBar(),
              Expanded(child: InvoicesList()),
            ],
          ),
        ),
      ),
    );
  }
}
