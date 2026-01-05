import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shop_debts/core/enum/creditor_details_page.enum.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_card.dart';
import 'package:shop_debts/features/creditors/presentation/molecules/creditor_details_options_bar.dart';

class CreditorDetailsPage extends ConsumerStatefulWidget {
  const CreditorDetailsPage({super.key});
  static const routeName = 'creditor_details_page';
  static const routePath = '/creditors_details_page';

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CreditorDetailsPageState();
}

class _CreditorDetailsPageState extends ConsumerState<CreditorDetailsPage> {
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final creditor = ref.watch(CreditorCard.creditorProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(creditor.name),
          centerTitle: true,
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(6.h),
            child: CreditorDetailsOptionsBar(pageController: _pageController),
          ),
        ),
        body: PageView(
          controller: _pageController,
          onPageChanged: (value) => ref.read(CreditorDetailsOptionsBar.pageIndexProvider.notifier).state = value,
          children: CreditorDetailsPageEnum.values.map((e) => e.page).toList(),
        ),
      ),
    );
  }
}
