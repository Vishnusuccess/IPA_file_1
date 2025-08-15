import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/features/report_issue/bloc/report_issue_bloc.dart';
import 'package:trueme/features/report_issue/event_listener/report_issue_listener.dart';

@RoutePage()
class ReportIssueScreen extends StatelessWidget {
  const ReportIssueScreen({super.key});

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            getIt<ReportIssueBloc>()..add(const ReportIssueEvent.onInit()),
        child: const ReportIssueEventListener(
          child: BaseScaffold(
            body: _Body(),
          ),
        ),
      );
}

class _Body extends StatefulWidget {
  const _Body();

  @override
  State<_Body> createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  final _emailController = TextEditingController();
  final _messageController = TextEditingController();

  List<String> _getIssueTypes(BuildContext context) => [
        context.strings.reportIssueChooseYourIssue,
        context.strings.reportIssueInappropriate,
        context.strings.reportIssueError,
        context.strings.reportIssueOffensive,
        context.strings.reportIssueOther,
      ];

  @override
  void dispose() {
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) =>
      BlocBuilder<ReportIssueBloc, ReportIssueState>(
        builder: (context, state) {
          return Column(
            children: [
              // Custom AppBar with X button
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    IconButton(
                      icon: const Icon(
                        Icons.close,
                        color: AppColors.primaryWhite,
                        size: 24,
                      ),
                      onPressed: () => Navigator.of(context).pop(),
                    ),
                  ],
                ),
              ),

              // Content
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.all(24),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height -
                          MediaQuery.of(context).viewInsets.bottom -
                          200, // AppBar height and padding
                    ),
                    child: IntrinsicHeight(
                      child: Column(
                        children: [
                          Text(
                            context.strings.reportIssueTitle,
                            style: AppStyles.h2Medium.copyWith(
                              color: AppColors.primaryWhite,
                            ),
                            textAlign: TextAlign.center,
                          ),

                          const SizedBox(height: 40),

                          // Issue Type Dropdown
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 4,),
                            decoration: BoxDecoration(
                              color: const Color(0xFF2D2C30),
                              borderRadius:
                                  BorderRadius.circular(BorderRadiusSize.m),
                              border:
                                  Border.all(color: const Color(0xFF7C7C7F)),
                            ),
                            child: DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                value: state.selectedIssueType ??
                                    context.strings.reportIssueChooseYourIssue,
                                isExpanded: true,
                                dropdownColor: const Color(0xFF2D2C30),
                                style: const TextStyle(
                                  fontFamily: 'Rubik',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16,
                                  height: 1.3,
                                  letterSpacing: -0.16,
                                  color: Colors.white,
                                ),
                                onChanged: (String? newValue) {
                                  if (newValue != null &&
                                      newValue !=
                                          context.strings
                                              .reportIssueChooseYourIssue) {
                                    context.read<ReportIssueBloc>().add(
                                          ReportIssueEvent.onIssueTypeChanged(
                                              newValue,),
                                        );
                                  }
                                },
                                items: _getIssueTypes(context)
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(
                                        fontFamily: 'Rubik',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16,
                                        height: 1.3,
                                        letterSpacing: -0.16,
                                        color: value ==
                                                context.strings
                                                    .reportIssueChooseYourIssue
                                            ? Colors.grey
                                            : Colors.white,
                                      ),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ),

                          const SizedBox(height: 24),

                          // Email field
                          TextFormField(
                            controller: _emailController,
                            keyboardType: TextInputType.emailAddress,
                            style: const TextStyle(
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.3,
                              letterSpacing: -0.16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: context.strings.reportIssueEmailHint,
                              hintStyle: const TextStyle(
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 1.3,
                                letterSpacing: -0.16,
                                color: Colors.grey,
                              ),
                              filled: true,
                              fillColor: const Color(0xFF2D2C30),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(BorderRadiusSize.m),
                                borderSide:
                                    const BorderSide(color: Color(0xFF7C7C7F)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(BorderRadiusSize.m),
                                borderSide:
                                    const BorderSide(color: Color(0xFF7C7C7F)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(BorderRadiusSize.m),
                                borderSide:
                                    const BorderSide(color: Color(0xFF7C7C7F)),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                            onChanged: (value) {
                              context.read<ReportIssueBloc>().add(
                                    ReportIssueEvent.onEmailChanged(value),
                                  );
                            },
                          ),

                          const SizedBox(height: 24),

                          // Message field
                          TextFormField(
                            controller: _messageController,
                            maxLines: 4,
                            style: const TextStyle(
                              fontFamily: 'Rubik',
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                              height: 1.3,
                              letterSpacing: -0.16,
                              color: Colors.white,
                            ),
                            decoration: InputDecoration(
                              hintText: context.strings.reportIssueDescribeHint,
                              hintStyle: const TextStyle(
                                fontFamily: 'Rubik',
                                fontWeight: FontWeight.w400,
                                fontSize: 16,
                                height: 1.3,
                                letterSpacing: -0.16,
                                color: Colors.grey,
                              ),
                              filled: true,
                              fillColor: const Color(0xFF2D2C30),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(BorderRadiusSize.m),
                                borderSide:
                                    const BorderSide(color: Color(0xFF7C7C7F)),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(BorderRadiusSize.m),
                                borderSide:
                                    const BorderSide(color: Color(0xFF7C7C7F)),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(BorderRadiusSize.m),
                                borderSide:
                                    const BorderSide(color: Color(0xFF7C7C7F)),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16,
                                vertical: 16,
                              ),
                            ),
                            onChanged: (value) {
                              context.read<ReportIssueBloc>().add(
                                    ReportIssueEvent.onMessageChanged(value),
                                  );
                            },
                          ),

                          const Expanded(child: SizedBox()),

                          // Submit button
                          GestureDetector(
                            onTap: state.isSubmitting || !state.isFormValid
                                ? null
                                : () {
                                    if (state.selectedIssueType == null ||
                                        state.selectedIssueType ==
                                            context.strings
                                                .reportIssueChooseYourIssue) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(context.strings
                                              .errorPleaseSelectIssueType,),
                                        ),
                                      );
                                      return;
                                    }

                                    if (!state.isFormValid) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content: Text(context.strings
                                              .errorPleaseFillAllFields,),
                                        ),
                                      );
                                      return;
                                    }

                                    context.read<ReportIssueBloc>().add(
                                          const ReportIssueEvent
                                              .onSubmitReport(),
                                        );
                                  },
                            child: Container(
                              width: double.infinity,
                              height: 54,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.topRight,
                                  colors:
                                      state.isSubmitting || !state.isFormValid
                                          ? [
                                              const Color(0xFF6962F2)
                                                  .withValues(alpha: 0.7),
                                              const Color(0xFF5851EC)
                                                  .withValues(alpha: 0.7),
                                            ]
                                          : [
                                              const Color(0xFF6962F2),
                                              const Color(0xFF5851EC),
                                            ],
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: state.isSubmitting
                                  ? const Center(
                                      child: SizedBox(
                                        height: 24,
                                        width: 24,
                                        child: CircularProgressIndicator(
                                          valueColor:
                                              AlwaysStoppedAnimation<Color>(
                                                  Colors.white,),
                                          strokeWidth: 2.5,
                                        ),
                                      ),
                                    )
                                  : Center(
                                      child: Text(
                                        context.strings.buttonSubmit,
                                        style: AppStyles.text16pxMedium
                                            .copyWith(
                                                color: AppColors.primaryWhite,),
                                        textScaler: TextScaler.noScaling,
                                      ),
                                    ),
                            ),
                          ),

                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      );
}
