import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';
import 'package:shop_debts/core/extensions/context.extensions.dart';
import 'package:shop_debts/core/extensions/object.extensions.dart';

extension AsyncValueExtension on AsyncValue {
  showErrorToast(BuildContext context) {
    whenOrNull(
      error: (error, stackTrace) {
        context.showToast(
          message: error.getErrorMessage,
          type: .error,
        );
      },
    );
  }
}
