import 'package:flutter/material.dart';
import 'package:invoicex/ui/views/dashboard/dashboard_view.dart';
import 'package:invoicex/ui/views/profile/profile_view.dart';
import 'package:invoicex/ui/views/services/services_view.dart';
import 'package:invoicex/ui/views/subscriptions/subscriptions_view.dart';
import 'package:stacked/stacked.dart';

class NavigationViewModel extends BaseViewModel {
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void ind(int index) {
    _selectedIndex = index;
    rebuildUi();
  }

  NavigationRailLabelType labelType = NavigationRailLabelType.none;

  final List<Widget> screens = [
    const DashboardView(),
    const SubscriptionsView(),
    const ServicesView(),
    const ProfileView(),
  ];

  List<NavigationRailDestination> destinations() {
    return const [
      NavigationRailDestination(
        icon: Icon(Icons.dashboard_outlined),
        selectedIcon: Icon(Icons.dashboard),
        label: Text('Dashboard'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.view_timeline_outlined),
        selectedIcon: Icon(Icons.view_timeline),
        label: Text('Subscriptions'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.home_repair_service_outlined),
        selectedIcon: Icon(Icons.home_repair_service),
        label: Text('Services'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.person_2_outlined),
        selectedIcon: Icon(Icons.person_2),
        label: Text('Profile'),
      ),
      // NavigationRailDestination(
      //   icon: Icon(Icons.payments_outlined),
      //   selectedIcon: Icon(Icons.payments),
      //   label: Text('Cards'),
      // ),
    ];
  }
}
