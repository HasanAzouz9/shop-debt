import 'package:flutter/material.dart';

import '../../../../config/const/app_constants.dart';
import '../../../../core/extensions/app_dimensions.extension.dart';

class CenteredLoadingMessage extends StatelessWidget {
  const CenteredLoadingMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: context.padding8,
        child: const Text(AppConstants.loadingMessage),
      ),
    );
  }
}
