import 'package:flutter/material.dart';
import 'package:invoicex/app/app.locator.dart';
import 'package:invoicex/app/app.router.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignInDialogModel extends BaseViewModel {
  InputDecoration decorate(icon, String hint) => InputDecoration(
        focusColor: kcPurple,
        hintText: hint,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(icon),
        ),
      );

  final _routerService = locator<RouterService>();

  Future<void> navigateToUserProfile() async {
    await _routerService.navigateToDashboardView();
  }
}
