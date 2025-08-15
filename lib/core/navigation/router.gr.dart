// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:trueme/features/chatbot/chat_screen.dart' as _i1;
import 'package:trueme/features/chatbot/utils/chatbot_utils.dart' as _i15;
import 'package:trueme/features/exercise/exercise_screen.dart' as _i2;
import 'package:trueme/features/feedback/feedback_screen.dart' as _i3;
import 'package:trueme/features/force_update/presentation/force_update_screen.dart'
    as _i4;
import 'package:trueme/features/impact_metric/view/impact_metric_screen.dart'
    as _i5;
import 'package:trueme/features/login/view/login_screen.dart' as _i8;
import 'package:trueme/features/menu/menu_screen.dart' as _i9;
import 'package:trueme/features/report_issue/presentation/report_issue_screen.dart'
    as _i10;
import 'package:trueme/features/settings/settings_screen.dart' as _i11;
import 'package:trueme/features/settings/widgets/language_error_page.dart'
    as _i6;
import 'package:trueme/features/settings/widgets/language_success_page.dart'
    as _i7;
import 'package:trueme/features/splash_screen/splash_screen.dart' as _i12;

abstract class $TrueMeBaseRouter extends _i13.RootStackRouter {
  $TrueMeBaseRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    ChatRoute.name: (routeData) {
      final args =
          routeData.argsAs<ChatRouteArgs>(orElse: () => const ChatRouteArgs());
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.ChatScreen(
          key: args.key,
          chatbotRouteParams: args.chatbotRouteParams,
        ),
      );
    },
    ExerciseRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ExerciseScreen(),
      );
    },
    FeedbackRoute.name: (routeData) {
      final args = routeData.argsAs<FeedbackRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.FeedbackScreen(
          blockFeedbackId: args.blockFeedbackId,
          programProgressId: args.programProgressId,
          blockId: args.blockId,
          key: args.key,
        ),
      );
    },
    ForceUpdateRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.ForceUpdateScreen(),
      );
    },
    ImpactMetricRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ImpactMetricScreen(),
      );
    },
    LanguageErrorRoute.name: (routeData) {
      final args = routeData.argsAs<LanguageErrorRouteArgs>();
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.LanguageErrorPage(
          onTryAgain: args.onTryAgain,
          key: args.key,
        ),
      );
    },
    LanguageSuccessRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.LanguageSuccessPage(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginScreen(),
      );
    },
    MenuRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MenuScreen(),
      );
    },
    ReportIssueRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ReportIssueScreen(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.SettingsScreen(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.SplashScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChatScreen]
class ChatRoute extends _i13.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i14.Key? key,
    _i15.ChatbotRouteParams? chatbotRouteParams,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            chatbotRouteParams: chatbotRouteParams,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i13.PageInfo<ChatRouteArgs> page =
      _i13.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    this.chatbotRouteParams,
  });

  final _i14.Key? key;

  final _i15.ChatbotRouteParams? chatbotRouteParams;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, chatbotRouteParams: $chatbotRouteParams}';
  }
}

/// generated route for
/// [_i2.ExerciseScreen]
class ExerciseRoute extends _i13.PageRouteInfo<void> {
  const ExerciseRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ExerciseRoute.name,
          initialChildren: children,
        );

  static const String name = 'ExerciseRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FeedbackScreen]
class FeedbackRoute extends _i13.PageRouteInfo<FeedbackRouteArgs> {
  FeedbackRoute({
    required String blockFeedbackId,
    required String programProgressId,
    required String blockId,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          FeedbackRoute.name,
          args: FeedbackRouteArgs(
            blockFeedbackId: blockFeedbackId,
            programProgressId: programProgressId,
            blockId: blockId,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FeedbackRoute';

  static const _i13.PageInfo<FeedbackRouteArgs> page =
      _i13.PageInfo<FeedbackRouteArgs>(name);
}

class FeedbackRouteArgs {
  const FeedbackRouteArgs({
    required this.blockFeedbackId,
    required this.programProgressId,
    required this.blockId,
    this.key,
  });

  final String blockFeedbackId;

  final String programProgressId;

  final String blockId;

  final _i14.Key? key;

  @override
  String toString() {
    return 'FeedbackRouteArgs{blockFeedbackId: $blockFeedbackId, programProgressId: $programProgressId, blockId: $blockId, key: $key}';
  }
}

/// generated route for
/// [_i4.ForceUpdateScreen]
class ForceUpdateRoute extends _i13.PageRouteInfo<void> {
  const ForceUpdateRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ForceUpdateRoute.name,
          initialChildren: children,
        );

  static const String name = 'ForceUpdateRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ImpactMetricScreen]
class ImpactMetricRoute extends _i13.PageRouteInfo<void> {
  const ImpactMetricRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ImpactMetricRoute.name,
          initialChildren: children,
        );

  static const String name = 'ImpactMetricRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.LanguageErrorPage]
class LanguageErrorRoute extends _i13.PageRouteInfo<LanguageErrorRouteArgs> {
  LanguageErrorRoute({
    required void Function() onTryAgain,
    _i14.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          LanguageErrorRoute.name,
          args: LanguageErrorRouteArgs(
            onTryAgain: onTryAgain,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'LanguageErrorRoute';

  static const _i13.PageInfo<LanguageErrorRouteArgs> page =
      _i13.PageInfo<LanguageErrorRouteArgs>(name);
}

class LanguageErrorRouteArgs {
  const LanguageErrorRouteArgs({
    required this.onTryAgain,
    this.key,
  });

  final void Function() onTryAgain;

  final _i14.Key? key;

  @override
  String toString() {
    return 'LanguageErrorRouteArgs{onTryAgain: $onTryAgain, key: $key}';
  }
}

/// generated route for
/// [_i7.LanguageSuccessPage]
class LanguageSuccessRoute extends _i13.PageRouteInfo<void> {
  const LanguageSuccessRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LanguageSuccessRoute.name,
          initialChildren: children,
        );

  static const String name = 'LanguageSuccessRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MenuScreen]
class MenuRoute extends _i13.PageRouteInfo<void> {
  const MenuRoute({List<_i13.PageRouteInfo>? children})
      : super(
          MenuRoute.name,
          initialChildren: children,
        );

  static const String name = 'MenuRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ReportIssueScreen]
class ReportIssueRoute extends _i13.PageRouteInfo<void> {
  const ReportIssueRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ReportIssueRoute.name,
          initialChildren: children,
        );

  static const String name = 'ReportIssueRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.SettingsScreen]
class SettingsRoute extends _i13.PageRouteInfo<void> {
  const SettingsRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i12.SplashScreen]
class SplashRoute extends _i13.PageRouteInfo<void> {
  const SplashRoute({List<_i13.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
