import 'package:flutter/material.dart';
import 'package:invoicex/app/app.locator.dart';
import 'package:invoicex/app/app.router.dart';
import 'package:invoicex/ui/views/dashboard/dashboard_view.tablet.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import 'dashboard_view.mobile.dart';

class DashboardViewModel extends BaseViewModel {
  final _routerService = locator<RouterService>();
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void ind(int index) {
    _selectedIndex = index;
    rebuildUi();
  }

  NavigationRailLabelType labelType = NavigationRailLabelType.none;

  final List<Widget> screens = [
    const DashboardViewTablet(),
    const DashboardViewMobile(),
    const DashboardViewTablet(),
    const DashboardViewMobile(),
    const DashboardViewTablet(),
    // const DashboardViewTablet(),
  ];

  Future<void> navigateToUserProfile() async {
    await _routerService.navigateToHomeView();
  }
}
