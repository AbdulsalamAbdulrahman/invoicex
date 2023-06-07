import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'subscriptions_viewmodel.dart';

class SubscriptionsViewDesktop extends ViewModelWidget<SubscriptionsViewModel> {
  const SubscriptionsViewDesktop({super.key});

  @override
  Widget build(BuildContext context, SubscriptionsViewModel viewModel) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Subscriptions',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.w900,
          ),
        ),
      ),
    );
  }
}
