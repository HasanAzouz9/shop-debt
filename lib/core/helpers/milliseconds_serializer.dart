import 'package:freezed_annotation/freezed_annotation.dart';

class MillisecondsSerializer implements JsonConverter<DateTime, int> {
  const MillisecondsSerializer();

  @override
  DateTime fromJson(int json) => DateTime.fromMillisecondsSinceEpoch(json);

  @override
  int toJson(DateTime object) => object.millisecondsSinceEpoch;
}

// Define a simple converter that handles null input and string output:
class DateTimeStringConverter implements JsonConverter<DateTime, String?> {
  const DateTimeStringConverter();

  @override
  DateTime fromJson(String? json) {
    if (json == null) {
      // If Supabase returns null, throw an error or return a safe default
      // like DateTime.now() if you absolutely need a non-nullable value here.
      // Throwing an error is often better if the DB promised non-null.
      throw StateError('created_at returned null from the database.');
    }
    return DateTime.parse(json);
  }

  @override
  String? toJson(DateTime object) => object.toIso8601String();
}
