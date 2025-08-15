part of 'report_issue_bloc.dart';

@freezed
class ReportIssueState with _$ReportIssueState {
  const factory ReportIssueState({
    required String stateId,
    required String email,
    required String message,
    required String? selectedIssueType,
    required bool isSubmitting,
    required bool isFormValid,
    required ReportIssueEventState reportIssueEvent,
    String? error,
  }) = _ReportIssueState;

  factory ReportIssueState.initial() => ReportIssueState(
        stateId: UniqueKey().toString(),
        email: '',
        message: '',
        selectedIssueType: null,
        isSubmitting: false,
        isFormValid: false,
        reportIssueEvent: const ReportIssueEventState.idle(),
      );
}

@freezed
class ReportIssueEventState with _$ReportIssueEventState {
  const factory ReportIssueEventState.idle() = _Idle;

  const factory ReportIssueEventState.onSubmitSuccess() = _OnSubmitSuccess;

  const factory ReportIssueEventState.onSubmitError(String error) =
      _OnSubmitError;
}
