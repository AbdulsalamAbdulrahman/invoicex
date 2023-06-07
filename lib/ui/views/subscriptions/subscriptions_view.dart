import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'subscriptions_view.desktop.dart';
import 'subscriptions_view.tablet.dart';
import 'subscriptions_view.mobile.dart';
import 'subscriptions_viewmodel.dart';

class SubscriptionsView extends StackedView<SubscriptionsViewModel> {
  const SubscriptionsView({super.key});

  @override
  Widget builder(
    BuildContext context,
    SubscriptionsViewModel viewModel,
    Widget? child,
  ) {
    return ScreenTypeLayout.builder(
      mobile: (_) => const SubscriptionsViewMobile(),
      tablet: (_) => const SubscriptionsViewTablet(),
      desktop: (_) => const SubscriptionsViewDesktop(),
    );
  }

  @override
  SubscriptionsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SubscriptionsViewModel();
}
