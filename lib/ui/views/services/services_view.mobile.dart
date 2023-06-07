import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'services_viewmodel.dart';

class ServicesViewMobile extends ViewModelWidget<ServicesViewModel> {
  const ServicesViewMobile({super.key});

  @override
  Widget build(BuildContext context, ServicesViewModel viewModel) {
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
