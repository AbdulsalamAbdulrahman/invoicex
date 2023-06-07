import 'package:flutter/material.dart';
import 'package:invoicex/ui/views/navigation/widgets/navigation_rail.dart';
import 'package:stacked/stacked.dart';

import 'navigation_viewmodel.dart';

class NavigationViewDesktop extends ViewModelWidget<NavigationViewModel> {
  const NavigationViewDesktop({super.key});

  @override
  Widget build(BuildContext context, NavigationViewModel viewModel) {
    return const NavRail();
  }
}
