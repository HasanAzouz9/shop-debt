import 'package:riverpod/riverpod.dart';

class CreditorFormState {
  final AsyncValue<void> submissionStatus;
  final AsyncValue<bool> nameExistsStatus;

  CreditorFormState({
    this.submissionStatus = const AsyncData(null),
    this.nameExistsStatus = const AsyncData(false),
  });

  CreditorFormState copyWith({
    AsyncValue<void>? submissionStatus,
    AsyncValue<bool>? nameExistsStatus,
  }) {
    return CreditorFormState(
      submissionStatus: submissionStatus ?? this.submissionStatus,
      nameExistsStatus: nameExistsStatus ?? this.nameExistsStatus,
    );
  }
}
