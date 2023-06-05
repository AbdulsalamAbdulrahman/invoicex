import 'package:flutter/material.dart';
import 'package:invoicex/ui/widgets/centred_view/centred_view.dart';
import 'package:invoicex/ui/widgets/nav_bar/nav_drawer.dart';
import 'package:invoicex/ui/widgets/nav_bar/navbar.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

import 'home_view.desktop.dart';
import 'home_view.mobile.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({super.key});

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
              drawer:
                  sizingInformation.deviceScreenType == DeviceScreenType.mobile
                      ? const NavDrawer()
                      : null,
              backgroundColor: Colors.white,
              body: CentredView(
                child: Column(
                  children: <Widget>[
                    const NavBar(),
                    Expanded(
                      child: ScreenTypeLayout.builder(
                        mobile: (_) => const HomeViewMobile(),
                        // tablet: (_) => const HomeViewTablet(),
                        desktop: (_) => const HomeViewDesktop(),
                      ),
                    ),
                  ],
                ),
              ),
            ));
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
