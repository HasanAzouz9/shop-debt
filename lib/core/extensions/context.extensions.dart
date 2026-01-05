import 'package:flutter/material.dart';

import '../enum/toast_type.dart';
import '../helpers/toast_bar.dart';

extension ContextExtensions on BuildContext {
  ColorScheme get colorScheme => Theme.of(this).colorScheme;
  TextTheme get textTheme => Theme.of(this).textTheme;
  void showToast({required String message, required ToastType type}) =>
      ToastBar.showToast(context: this, message: message, toastType: type);
}
