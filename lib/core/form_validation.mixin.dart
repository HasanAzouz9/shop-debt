mixin FormValidationMixin {
  final passwordRegEx = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$');

  final upperCaseRegEx = RegExp(r'[A-Z]');

  final lowerCaseRegEx = RegExp(r'[a-z]');

  final numberRegEx = RegExp(r'[0-9]');

  final emailRegEx = RegExp(r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+');

  final mobileRegEx = RegExp(r'^[0-9]{10}$');

  String? validatePositiveNumber({required String? input}) {
    if (input == null || input.trim().isEmpty) {
      return 'هذا الحقل اجباري';
    }

    final parsedValue = int.tryParse(input);

    if (parsedValue == null) {
      return 'يجب ادخال عدد صحيح حصرا';
    }

    if (parsedValue <= 0) {
      return 'لا يمكن ان تكون القيمة صفر او اقل';
    }

    return null;
  }

  String? validatePhoneNumber(String? value) {
    if (value != null && value.isNotEmpty) {
      if (!mobileRegEx.hasMatch(value)) {
        return 'الرجاء ادخال رقم هاتف صحيح';
      }
    }
    return null;
  }

  String? validateLoading() {
    return 'جاري التحقق';
  }

  String? validateEmptyField(String? text) {
    if (text == null || text.isEmpty) {
      return 'هذا الحقل اجباري';
    }
    return null;
  }

  String? validateIntInput(String? input) {
    if (input == null || input.trim().isEmpty) {
      return 'هذا الحقل اجباري';
    }

    final parsedValue = int.tryParse(input);

    if (parsedValue == null) {
      return 'يجب ادخال عدد صحيح حصرا';
    }

    return null;
  }

  String? validateDoubleInput(String? input) {
    if (input == null || input.trim().isEmpty) {
      return 'هذا الحقل اجباري';
    }

    final parsedValue = double.tryParse(input);

    if (parsedValue == null) {
      return 'يجب ادخال رقم حصرا';
    }
    return null;
  }

  String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter valid email address';
    }
    if (!emailRegEx.hasMatch(value)) {
      return 'Please enter valid email address';
    }
    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your password';
    }

    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }

    // if (!value.contains(upperCaseRegEx)) {
    //   return 'Password must contain at least 1 uppercase letter';
    // }

    if (!value.contains(lowerCaseRegEx)) {
      return 'Password must contain at least 1 lowercase letter';
    }

    if (!value.contains(numberRegEx)) {
      return 'Password must contain at least 1 number';
    }

    // if (!passwordRegEx.hasMatch(value)) {
    //   return 'Password must contain at least 1 uppercase letter, 1 lowercase letter and 1 number';
    // }
    return null;
  }

  String? validateNameAlreadyExist() {
    return 'الاسم موجود مسبقا';
  }

  String? checkingNameExist() {
    return 'جاري التحقق';
  }

  String? validationError() {
    return 'حصل خطأ ما';
  }

  String? validateListContainsValue(String? value, List<String> sourceList) {
    // 1. Check if the input value is null or empty
    if (value == null || value.isEmpty) {
      // Return null if empty is acceptable, or return an error if it's required
      // Assuming a non-empty value is expected if we're checking against a list.
      return 'لا يمكن ان يكون الاسم فارغ';
    }

    // 2. Check if the sourceList contains the input value
    if (sourceList.contains(value)) {
      return 'الاسم موجود مسبقا جرب ادخال اسم اخر';
    }

    // 3. Validation passed
    return null;
  }
}
