import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/views/navigation/navigation_viewmodel.dart';
import 'package:stacked/stacked.dart';

class NavRail extends ViewModelWidget<NavigationViewModel> {
  const NavRail({super.key});

  @override
  Widget build(BuildContext context, NavigationViewModel viewModel) {
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
              destinations: viewModel.destinations(),
              selectedIndex: viewModel.selectedIndex),
          const VerticalDivider(thickness: 1, width: 1),
          Expanded(
            child: viewModel.screens[viewModel.selectedIndex],
          )
        ],
      ),
    );
  }
}
