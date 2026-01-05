import 'package:flutter/material.dart';
import 'package:shop_debts/config/const/assets_constants.dart';
import 'package:shop_debts/core/extensions/app_dimensions.extension.dart';

import '../atoms/set_exchange_rate_label.dart';
import '../organisms/remote_exchange_rate_setter.dart';
import '../organisms/manually_exchange_rate_setter.dart';

class SetExchangeRatePage extends StatelessWidget {
  const SetExchangeRatePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: context.padding16,
        child: Column(
          mainAxisAlignment: .center,
          spacing: 16,
          children: [
            Image.asset(
              AssetsConstants.transparentLogo,
              height: 200,
            ),
            const SetExchangeRateLabel(),
            const RemoteExchangeRateSetter(),
            const ManuallyExchangeRateSetter(),
          ],
        ),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
