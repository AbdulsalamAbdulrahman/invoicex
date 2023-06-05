import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/common/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/ui_helpers.dart';
import 'package:invoicex/ui/views/home/widgets/home/home_title.dart';
import 'package:invoicex/ui/views/home/widgets/home/home_image.dart';
import 'package:stacked/stacked.dart';

import 'home_viewmodel.dart';

class HomeViewDesktop extends ViewModelWidget<HomeViewModel> {
  const HomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return const Scaffold(
      backgroundColor: kcWhite,
      body: Center(
        child: SizedBox(
          width: kdDesktopMaxContentWidth,
          height: kdDesktopMaxContentHeight,
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  verticalSpaceMassive,
                  HomeTitle(),
                ],
              ),
              Expanded(child: HomeImage())
            ],
          ),
        ),
      ),
    );
  }
}
