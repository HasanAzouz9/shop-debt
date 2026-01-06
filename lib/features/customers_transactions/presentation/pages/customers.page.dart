import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/features/common/presentation/atoms/app_icon_button.dart';
import '../organisms/customer_form_dialog.dart';
import '../organisms/customers_list.dart';
import '../molecules/customers_search_bar.dart';

class CustomersPage extends StatelessWidget {
  const CustomersPage({super.key});
  static const routeName = 'customer_page';
  static const routePath = '/customer_page';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text(AppConstants.customersLabel),
          centerTitle: true,
          forceMaterialTransparency: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(4.h),
            child: Align(
              alignment: .centerRight,
              child: Padding(
                padding: context.paddingHorizontal16,
                child: AppIconButton(
                  icon: Icons.add,
                  onTap: () => showDialog(
                    context: context,
                    builder: (context) => const CustomerFormDialog(),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: Padding(
          padding: context.padding16,
          child: const Column(
            spacing: 16,
            children: [
              CustomersSearchBar(),
              Expanded(child: CustomersList()),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
