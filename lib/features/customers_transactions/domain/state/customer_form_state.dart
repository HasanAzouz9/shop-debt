import 'package:riverpod/riverpod.dart';

class CustomerFormState {
  final AsyncValue<void> submissionStatus;
  final AsyncValue<bool> nameExistsStatus;

  CustomerFormState({
    this.submissionStatus = const AsyncData(null),
    this.nameExistsStatus = const AsyncData(false),
  });

  CustomerFormState copyWith({
    AsyncValue<void>? submissionStatus,
    AsyncValue<bool>? nameExistsStatus,
  }) {
    return CustomerFormState(
      submissionStatus: submissionStatus ?? this.submissionStatus,
      nameExistsStatus: nameExistsStatus ?? this.nameExistsStatus,
    );
  }
}
