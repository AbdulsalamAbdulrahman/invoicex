import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/common/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:invoicex/ui/views/home/widgets/home/home_image.dart';
import 'package:invoicex/ui/views/home/widgets/home/home_title.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewMobile extends ViewModelWidget<HomeViewModel> {
  const HomeViewMobile({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return Scaffold(
        backgroundColor: kcWhite,
        body: ListView(
          padding: const EdgeInsets.symmetric(
              // horizontal: 40,
              // vertical: 50,
              ),
          children: const [
            verticalSpaceTiny,
            HomeTitle(),
            verticalSpaceMedium,
            HomeImage()
          ],
        ));
  }
}
