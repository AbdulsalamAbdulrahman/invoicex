import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'subscriptions_viewmodel.dart';

class SubscriptionsViewTablet extends ViewModelWidget<SubscriptionsViewModel> {
  const SubscriptionsViewTablet({super.key});

  @override
  Widget build(BuildContext context, SubscriptionsViewModel viewModel) {
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
