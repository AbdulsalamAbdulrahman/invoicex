import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'services_viewmodel.dart';

class ServicesViewDesktop extends ViewModelWidget<ServicesViewModel> {
  const ServicesViewDesktop({super.key});

  @override
  Widget build(BuildContext context, ServicesViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Services',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
