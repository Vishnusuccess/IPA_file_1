import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trueme/core/design/app_colors.dart';
import 'package:trueme/core/design/app_styles.dart';
import 'package:trueme/core/l10n/l10n.dart';
import 'package:trueme/core/presentation/base_button/gradient_button.dart';
import 'package:trueme/core/presentation/base_scaffold/base_scaffold.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class ForceUpdateScreen extends StatelessWidget {
  const ForceUpdateScreen({super.key});

  Future<void> _openStore() async {
    const appleAppId = '6744270255';
    const androidAppId = 'YOUR_ANDROID_APP_ID';

    final url = Platform.isIOS
        ? 'https://apps.apple.com/pl/app/trueme-space/id$appleAppId'
        : 'market://details?id=$androidAppId';

    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SizedBox(height: 20),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                context.strings.forceUpdateRequired,
                style: AppStyles.subtitleMedium.copyWith(
                  color: AppColors.primaryWhite,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                context.strings.forceUpdateMessage,
                style: AppStyles.subtitleMedium.copyWith(
                  color: AppColors.primaryGrey3,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GradientButton(
              text: context.strings.forceUpdateButton,
              onPressed: _openStore,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
