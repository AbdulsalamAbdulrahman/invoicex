import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'navigation_viewmodel.dart';

class NavigationViewTablet extends ViewModelWidget<NavigationViewModel> {
  const NavigationViewTablet({super.key});

  @override
  Widget build(BuildContext context, NavigationViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hello, TABLET UI!',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
