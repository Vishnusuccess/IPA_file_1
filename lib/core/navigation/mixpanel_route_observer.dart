import 'package:flutter/material.dart';
import 'package:trueme/core/services/app_tracking_service.dart';

/// RouteObserver do automatycznego śledzenia nawigacji w Mixpanel
class MixpanelRouteObserver extends RouteObserver<ModalRoute<dynamic>> {
  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    _trackRoute(route, 'push');
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute != null) {
      _trackRoute(previousRoute, 'pop_back_to');
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute != null) {
      _trackRoute(newRoute, 'replace');
    }
  }

  @override
  void didRemove(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didRemove(route, previousRoute);
    if (previousRoute != null) {
      _trackRoute(previousRoute, 'remove_back_to');
    }
  }

  void _trackRoute(Route<dynamic> route, String action) {
    final routeName = _getRouteName(route);
    if (routeName != null) {
      AppTrackingService.trackScreenView(
        routeName,
        properties: {
          'navigation_action': action,
          'route_type': route.runtimeType.toString(),
        },
      );
    }
  }

  String? _getRouteName(Route<dynamic> route) {
    if (route.settings.name != null) {
      return route.settings.name!;
    }

    // Próba wyciągnięcia nazwy z typu route
    final routeType = route.runtimeType.toString();
    if (routeType.contains('Route')) {
      return routeType.replaceAll('Route', '').replaceAll('PageRoute', '');
    }

    return routeType;
  }
}
