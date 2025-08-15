import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/features/report_issue/bloc/report_issue_bloc.dart';

class ReportIssueEventListener extends StatelessWidget {
  const ReportIssueEventListener({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) =>
      BlocListener<ReportIssueBloc, ReportIssueState>(
        listener: (context, state) => state.reportIssueEvent.when(
          idle: () => null,
          onSubmitSuccess: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(context.strings.successReportSubmitted),
              ),
            );
            Navigator.of(context).pop();
            return null;
          },
          onSubmitError: (error) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(error),
              ),
            );
            return null;
          },
        ),
        child: child,
      );
}
