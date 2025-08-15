part of 'report_issue_bloc.dart';

@freezed
class ReportIssueEvent with _$ReportIssueEvent {
  const factory ReportIssueEvent.onInit() = _OnInit;

  const factory ReportIssueEvent.onEmailChanged(String email) = _OnEmailChanged;

  const factory ReportIssueEvent.onMessageChanged(String message) =
      _OnMessageChanged;

  const factory ReportIssueEvent.onIssueTypeChanged(String issueType) =
      _OnIssueTypeChanged;

  const factory ReportIssueEvent.onSubmitReport() = _OnSubmitReport;
}
