// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedRouterGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i11;
import 'package:stacked/stacked.dart' as _i10;
import 'package:stacked_services/stacked_services.dart' as _i9;

import '../ui/views/dashboard/dashboard_view.dart' as _i3;
import '../ui/views/home/home_view.dart' as _i2;
import '../ui/views/navigation/navigation_view.dart' as _i7;
import '../ui/views/services/services_view.dart' as _i5;
import '../ui/views/startup/startup_view.dart' as _i1;
import '../ui/views/subscriptions/subscriptions_view.dart' as _i4;
import '../ui/views/unknown/unknown_view.dart' as _i8;

final stackedRouter =
    StackedRouterWeb(navigatorKey: _i9.StackedService.navigatorKey);

class StackedRouterWeb extends _i10.RootStackRouter {
  StackedRouterWeb({_i11.GlobalKey<_i11.NavigatorState>? navigatorKey})
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    StartupViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartupView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    HomeViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i2.HomeView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DashboardViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.DashboardView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SubscriptionsViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i4.SubscriptionsView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ServicesViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i5.ServicesView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    NavigationViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i7.NavigationView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
    UnknownViewRoute.name: (routeData) {
      return _i10.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i8.UnknownView(),
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig(
          StartupViewRoute.name,
          path: '/',
        ),
        _i10.RouteConfig(
          HomeViewRoute.name,
          path: '/home-view',
        ),
        _i10.RouteConfig(
          DashboardViewRoute.name,
          path: '/dashboard-view',
        ),
        _i10.RouteConfig(
          SubscriptionsViewRoute.name,
          path: '/subscriptions-view',
        ),
        _i10.RouteConfig(
          ServicesViewRoute.name,
          path: '/services-view',
        ),
        _i10.RouteConfig(
          NavigationViewRoute.name,
          path: '/navigation-view',
        ),
        _i10.RouteConfig(
          UnknownViewRoute.name,
          path: '/404',
        ),
        _i10.RouteConfig(
          '*#redirect',
          path: '*',
          redirectTo: '/404',
          fullMatch: true,
        ),
      ];
}

/// generated route for
/// [_i1.StartupView]
class StartupViewRoute extends _i10.PageRouteInfo<void> {
  const StartupViewRoute()
      : super(
          StartupViewRoute.name,
          path: '/',
        );

  static const String name = 'StartupView';
}

/// generated route for
/// [_i2.HomeView]
class HomeViewRoute extends _i10.PageRouteInfo<void> {
  const HomeViewRoute()
      : super(
          HomeViewRoute.name,
          path: '/',
        );

  static const String name = 'HomeView';
}

/// generated route for
/// [_i3.DashboardView]
class DashboardViewRoute extends _i10.PageRouteInfo<void> {
  const DashboardViewRoute()
      : super(
          DashboardViewRoute.name,
          path: '/dashboard-view',
        );

  static const String name = 'DashboardView';
}

/// generated route for
/// [_i4.SubscriptionsView]
class SubscriptionsViewRoute extends _i10.PageRouteInfo<void> {
  const SubscriptionsViewRoute()
      : super(
          SubscriptionsViewRoute.name,
          path: '/subscriptions-view',
        );

  static const String name = 'SubscriptionsView';
}

/// generated route for
/// [_i5.ServicesView]
class ServicesViewRoute extends _i10.PageRouteInfo<void> {
  const ServicesViewRoute()
      : super(
          ServicesViewRoute.name,
          path: '/services-view',
        );

  static const String name = 'ServicesView';
}

/// generated route for
/// [_i7.NavigationView]
class NavigationViewRoute extends _i10.PageRouteInfo<void> {
  const NavigationViewRoute()
      : super(
          NavigationViewRoute.name,
          path: '/home',
        );

  static const String name = 'NavigationView';
}

/// generated route for
/// [_i8.UnknownView]
class UnknownViewRoute extends _i10.PageRouteInfo<void> {
  const UnknownViewRoute()
      : super(
          UnknownViewRoute.name,
          path: '/404',
        );

  static const String name = 'UnknownView';
}

extension RouterStateExtension on _i9.RouterService {
  Future<dynamic> navigateToStartupView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToHomeView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToDashboardView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const DashboardViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToSubscriptionsView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const SubscriptionsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToServicesView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const ServicesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToNavigationView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const NavigationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> navigateToUnknownView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return navigateTo(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithStartupView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const StartupViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithHomeView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const HomeViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithDashboardView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const DashboardViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithSubscriptionsView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const SubscriptionsViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithServicesView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const ServicesViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithNavigationView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const NavigationViewRoute(),
      onFailure: onFailure,
    );
  }

  Future<dynamic> replaceWithUnknownView(
      {void Function(_i10.NavigationFailure)? onFailure}) async {
    return replaceWith(
      const UnknownViewRoute(),
      onFailure: onFailure,
    );
  }
}
