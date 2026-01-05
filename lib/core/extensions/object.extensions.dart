import 'package:supabase_flutter/supabase_flutter.dart';

import '../exceptions_handler/custom_exception.dart';

extension ObjectExtensions on Object {
  String get getErrorMessage {
    final error = this; // 'this' refers to the caught object

    if (error is CustomException) {
      return error.message;
    }

    if (error is PostgrestException) {
      // PostgrestException has a 'message' field natively
      return error.message;
    }

    // Fallback for standard exceptions or strings
    return error.toString();
  }
}
