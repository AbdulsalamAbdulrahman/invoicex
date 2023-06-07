import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'services_view.desktop.dart';
import 'services_view.tablet.dart';
import 'services_view.mobile.dart';
import 'services_viewmodel.dart';

class ServicesView extends StackedView<ServicesViewModel> {
  const ServicesView({super.key});

  @override
  Widget builder(
    BuildContext context,
    ServicesViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const ServicesViewMobile(),
      tablet: (_) => const ServicesViewTablet(),
      desktop: (_) => const ServicesViewDesktop(),
    );
  }

  @override
  ServicesViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ServicesViewModel();
}
