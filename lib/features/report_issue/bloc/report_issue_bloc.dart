import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:trueme/features/chatbot/data/models/report_issue_model.dart';
import 'package:trueme/features/chatbot/data/report_issue_service.dart';

part 'report_issue_bloc.freezed.dart';
part 'report_issue_event.dart';
part 'report_issue_state.dart';

@injectable
class ReportIssueBloc extends Bloc<ReportIssueEvent, ReportIssueState> {
  ReportIssueBloc(this._reportIssueService)
      : super(ReportIssueState.initial()) {
    on<_OnInit>(_onInit);
    on<_OnEmailChanged>(_onEmailChanged);
    on<_OnMessageChanged>(_onMessageChanged);
    on<_OnIssueTypeChanged>(_onIssueTypeChanged);
    on<_OnSubmitReport>(_onSubmitReport);
  }

  final ReportIssueService _reportIssueService;

  Future<void> _onInit(_OnInit event, Emitter<ReportIssueState> emit) async {
    emit(state.copyWith(
      email: '',
      message: '',
      selectedIssueType: null,
      isSubmitting: false,
      isFormValid: false,
      error: null,
      reportIssueEvent: const ReportIssueEventState.idle(),
    ),);
  }

  Future<void> _onEmailChanged(
      _OnEmailChanged event, Emitter<ReportIssueState> emit,) async {
    final newState = state.copyWith(email: event.email);
    final isFormValid = _validateForm(
        newState.email, newState.message, newState.selectedIssueType,);
    emit(newState.copyWith(isFormValid: isFormValid));
  }

  Future<void> _onMessageChanged(
      _OnMessageChanged event, Emitter<ReportIssueState> emit,) async {
    final newState = state.copyWith(message: event.message);
    final isFormValid = _validateForm(
        newState.email, newState.message, newState.selectedIssueType,);
    emit(newState.copyWith(isFormValid: isFormValid));
  }

  Future<void> _onIssueTypeChanged(
      _OnIssueTypeChanged event, Emitter<ReportIssueState> emit,) async {
    final newState = state.copyWith(selectedIssueType: event.issueType);
    final isFormValid = _validateForm(
        newState.email, newState.message, newState.selectedIssueType,);
    emit(newState.copyWith(isFormValid: isFormValid));
  }

  Future<void> _onSubmitReport(
      _OnSubmitReport event, Emitter<ReportIssueState> emit,) async {
    emit(state.copyWith(
      isSubmitting: true,
      error: null,
      reportIssueEvent: const ReportIssueEventState.idle(),
    ),);

    try {
      final request = ReportIssueRequest(
        message: state.message.trim(),
        issueType: IssueType.fromString(state.selectedIssueType!).value,
        issuerEmail: state.email.trim(),
      );

      final result = await _reportIssueService.reportIssue(request);

      result.fold(
        (success) {
          emit(state.copyWith(
            isSubmitting: false,
            reportIssueEvent: const ReportIssueEventState.onSubmitSuccess(),
          ),);
          emit(state.copyWith(
              reportIssueEvent: const ReportIssueEventState.idle(),),);
        },
        (error) {
          emit(state.copyWith(
            isSubmitting: false,
            reportIssueEvent: ReportIssueEventState.onSubmitError(error),
          ),);
          emit(state.copyWith(
              reportIssueEvent: const ReportIssueEventState.idle(),),);
        },
      );
    } catch (e) {
      emit(state.copyWith(
        isSubmitting: false,
        reportIssueEvent: const ReportIssueEventState.onSubmitError(
            'An unexpected error occurred',),
      ),);
      emit(
          state.copyWith(reportIssueEvent:
          const ReportIssueEventState.idle(),),);
    }
  }

  bool _validateForm(String email, String message, String? issueType) {
    final isEmailValid = _isValidEmail(email);
    final trimmedMessage = message.trim();
    final isMessageValid =
        trimmedMessage.length >= 10 && trimmedMessage.length <= 500;
    final isIssueTypeValid = issueType != null &&
        issueType != 'Choose your issue' &&
        issueType != 'Wybierz swój problem';

    return isEmailValid && isMessageValid && isIssueTypeValid;
  }

  bool _isValidEmail(String email) {
    if (email.trim().isEmpty) return false;
    return RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(email);
  }
}
