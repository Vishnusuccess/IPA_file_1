import 'package:flutter/material.dart';
import 'package:trueme/core/design/app_colors.dart';
import 'package:trueme/features/authorization/authorization_event_listener/authorization_event_listener.dart';

class BaseScaffold extends StatelessWidget {
  const BaseScaffold({
    required this.body,
    super.key,
    this.backgorundColor,
    this.backgroundImage,
  });

  final Widget body;
  final Color? backgorundColor;
  final String? backgroundImage;

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: backgorundColor ?? AppColors.primaryBlack,
        body: backgorundColor != null
            ? AuthorizationEventListener(
                child: SafeArea(
                  bottom: false,
                  child: GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: () =>
                        FocusScope.of(context).requestFocus(FocusNode()),
                    child: body,
                  ),
                ),
              )
            : AuthorizationEventListener(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: Image.asset(
                        backgroundImage ?? 'assets/icons/background_stars.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SafeArea(
                      bottom: false,
                      child: GestureDetector(
                        behavior: HitTestBehavior.translucent,
                        onTap: () =>
                            FocusScope.of(context).requestFocus(FocusNode()),
                        child: body,
                      ),
                    ),
                  ],
                ),
              ),
      );
}
