// ignore_for_file: use_build_context_synchronously

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trueme/core/design/design.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/navigation/router.gr.dart';
import 'package:trueme/core/presentation/base_button/gradient_button.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:trueme/core/presentation/widgets/chat_bot_button.dart';
import 'package:trueme/core/presentation/widgets/menu_button.dart';
import 'package:trueme/core/presentation/widgets/mood_slider.dart';
import 'package:trueme/core/service_locator/service_locater.dart';
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart';
import 'package:trueme/features/impact_metric/bloc/impact_metric_bloc.dart';

@RoutePage()
class ImpactMetricScreen extends StatelessWidget {
  const ImpactMetricScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ImpactMetricBloc>(
      create: (_) => getIt<ImpactMetricBloc>()
        ..add(const ImpactMetricEvent.onFetchImpactMetricData()),
      child: const _ImpactMetricScreenContent(),
    );
  }
}

class _ImpactMetricScreenContent extends StatefulWidget {
  const _ImpactMetricScreenContent();

  @override
  State<_ImpactMetricScreenContent> createState() =>
      _ImpactMetricScreenContentState();
}

class _ImpactMetricScreenContentState
    extends State<_ImpactMetricScreenContent> {
  double sliderValue = 0.5;

  @override
  Widget build(BuildContext context) => BaseScaffold(
        backgorundColor: AppColors.primaryBlack,
        body: Column(
          children: [
            AppBar(
              backgroundColor: AppColors.primaryBlack,
              elevation: 0,
              leading: const MenuButton(),
              title: Text(
                context.strings.impactMetricAssessment,
                style: AppStyles.text16pxBold
                    .copyWith(color: AppColors.primaryWhite),
              ),
              actions: [
                ChatBotButton(
                  onTap: () {},
                ),
              ],
            ),
            Expanded(
              child: BlocConsumer<ImpactMetricBloc, ImpactMetricState>(
                listener: (context, state) async {
                  await state.impactMetricEvent.when(
                    idle: () => null,
                    onSuccessGetImpactMetric: () => null,
                    onAnswerStarted: (String message) async {
                      await context.router.replace(
                        ChatRoute(
                          chatbotRouteParams: ChatbotRouteParams(
                            chatEndpointUtils: ChatEndpointUtils.init,
                            initialMessage: message,
                            skipInit:
                                true, // Skip calling chat/init since we have the message
                          ),
                        ),
                      );
                      return null;
                    },
                    showError: (error) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(error.message.first)),
                      );
                      return null;
                    },
                  );
                },
                builder: (context, state) {
                  if (state.isLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state.impactMetric != null) {
                    final impactMetric = state.impactMetric;
                    return Column(
                      children: [
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: Spacing.m,),
                                child: Text(
                                  impactMetric?.question ?? '',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.h2Bold.copyWith(
                                    color: AppColors.primaryWhite,
                                    fontSize: 23,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 90),
                              MoodSlider(
                                startLabel:
                                    context.strings.impactMetricFeelStressed,
                                endLabel: context.strings.impactMetricLifeEasy,
                                onValueChanged: (double value) {
                                  setState(() {
                                    sliderValue = value * 10;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(Spacing.m),
                          decoration: const BoxDecoration(
                            color: AppColors.primaryGrey7,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(BorderRadiusSize.l),
                              topRight: Radius.circular(BorderRadiusSize.l),
                            ),
                          ),
                          child: Column(
                            children: [
                              GradientButton(
                                text: context.strings.impactMetricSubmit,
                                onPressed: () {
                                  // Submit the impact metric answer
                                  context.read<ImpactMetricBloc>().add(
                                        ImpactMetricEvent
                                            .onClickSendImpactMetric(
                                          value: sliderValue.round(),
                                        ),
                                      );
                                },
                              ),
                              const SizedBox(height: 20),
                            ],
                          ),
                        ),
                      ],
                    );
                  } else if (state.error != null) {
                    return Center(
                      child: Text(
                        state.error!,
                        style: const TextStyle(color: AppColors.primaryWhite),
                      ),
                    );
                  }
                  return Center(
                    child: Text(
                      context.strings.loadingMessage,
                      style: const TextStyle(color: AppColors.primaryWhite),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      );
}
