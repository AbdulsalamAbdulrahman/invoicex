import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'navigation_viewmodel.dart';

class NavigationViewMobile extends ViewModelWidget<NavigationViewModel> {
  const NavigationViewMobile({super.key});

  @override
  Widget build(BuildContext context, NavigationViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, MOBILE UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
