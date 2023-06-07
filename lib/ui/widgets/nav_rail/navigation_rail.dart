import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/views/dashboard/dashboard_view.desktop.dart';
import 'package:invoicex/ui/views/dashboard/dashboard_view.tablet.dart';

class NavRail extends StatefulWidget {
  const NavRail({super.key});

  @override
  State<NavRail> createState() => _NavRailState();
}

class _NavRailState extends State<NavRail> {
  int _selectedIndex = 0;
  NavigationRailLabelType labelType = NavigationRailLabelType.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          NavigationRail(
              elevation: 2.0,
              selectedIconTheme: kcIconTheme,
              selectedLabelTextStyle: const TextStyle(color: kcPurple),
              leading: Image.asset('assets/logo.png'),
              extended: true,
              labelType: labelType,
              groupAlignment: -1.0,
              onDestinationSelected: (int index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
              destinations: _destinations(),
              selectedIndex: _selectedIndex),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: Center(child: Text('$_selectedIndex')),
          )
        ],
      ),
    );
  }

  final List views = [const DashboardViewDesktop(), const DashboardViewTablet()];
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
