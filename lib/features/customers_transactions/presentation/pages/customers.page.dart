import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/config/const/app_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
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
          title: Text(AppConstants.customersLabel, style: context.textTheme.headlineLarge),
          centerTitle: true,
          forceMaterialTransparency: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(6.h),
            child: Padding(
              padding: context.paddingHorizontal16,
              child: Row(
                spacing: 16,
                children: [
                  AppIconButton(
                    icon: Icons.add,
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) => const CustomerFormDialog(),
                    ),
                  ),
                  const Expanded(child: CustomersSearchBar()),
                ],
              ),
            ),
          ),
        ),
        body: Padding(
          padding: context.padding16,
          child: const CustomersList(),
        ),
        resizeToAvoidBottomInset: false,
      ),
    );
  }
}
