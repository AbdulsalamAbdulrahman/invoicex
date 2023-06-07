import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'navigation_view.desktop.dart';
import 'navigation_view.tablet.dart';
import 'navigation_view.mobile.dart';
import 'navigation_viewmodel.dart';

class NavigationView extends StackedView<NavigationViewModel> {
  const NavigationView({super.key});

  @override
  Widget builder(
    BuildContext context,
    NavigationViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const NavigationViewMobile(),
      tablet: (_) => const NavigationViewTablet(),
      desktop: (_) => const NavigationViewDesktop(),
    );
  }

  @override
  NavigationViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      NavigationViewModel();
}
