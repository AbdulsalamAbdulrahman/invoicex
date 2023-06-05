import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'dashboard_viewmodel.dart';

class DashboardViewDesktop extends ViewModelWidget<DashboardViewModel> {
  const DashboardViewDesktop({super.key});

  @override
  Widget build(BuildContext context, DashboardViewModel viewModel) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
              elevation: 2.0,
              selectedIconTheme: kcIconTheme,
              selectedLabelTextStyle: const TextStyle(color: kcPurple),
              leading: Image.asset('assets/logo.png'),
              extended: true,
              labelType: viewModel.labelType,
              groupAlignment: -1.0,
              onDestinationSelected: viewModel.ind,
              destinations: _destinations(),
              selectedIndex: viewModel.selectedIndex),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: viewModel.screens[viewModel.selectedIndex],
          )
        ],
      ),
    );
  }

  List<NavigationRailDestination> _destinations() {
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
        icon: Icon(Icons.star_border),
        selectedIcon: Icon(Icons.star),
        label: Text('Third'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.star_border),
        selectedIcon: Icon(Icons.star),
        label: Text('Third'),
      ),
      NavigationRailDestination(
        icon: Icon(Icons.star_border),
        selectedIcon: Icon(Icons.star),
        label: Text('Third'),
      ),
    ];
  }
}
