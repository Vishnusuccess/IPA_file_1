import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trueme/core/navigation/router.gr.dart';

export 'router.gr.dart';

@AutoRouterConfig()
class TrueMeBaseRouter extends $TrueMeBaseRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => <AutoRoute>[
        AutoRoute(page: LoginRoute.page),
        AutoRoute(page: ExerciseRoute.page),
        AutoRoute(page: ChatRoute.page),
        AutoRoute(page: SettingsRoute.page),
        AutoRoute(page: FeedbackRoute.page),
        AutoRoute(page: ImpactMetricRoute.page),
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: ForceUpdateRoute.page),
        AutoRoute(page: ReportIssueRoute.page),
        AutoRoute(page: MenuRoute.page),
        AutoRoute(page: LanguageSuccessRoute.page),
        AutoRoute(page: LanguageErrorRoute.page),
      ];
}

extension RouterExtension on BuildContext {
  static final _router = TrueMeBaseRouter();

  StackRouter get navigator => AutoRouter.of(this);
  TrueMeBaseRouter get router => _router;
}

extension StackRouterExt on StackRouter {
  Future<void> clearAndPush(PageRouteInfo route) => replaceAll([route]);

  Future<void> clearAndPushMultiple(List<PageRouteInfo> routes) =>
      replaceAll(routes, updateExistingRoutes: false);
}
