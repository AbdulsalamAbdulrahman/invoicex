import 'package:flutter/material.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:invoicex/ui/common/shared_styles.dart';
import 'package:invoicex/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class SignInButton extends StackedView<HomeViewModel> {
  const SignInButton({super.key});

  @override
  Widget builder(BuildContext context, HomeViewModel viewModel, Widget? child) {
    return TextButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(
              const EdgeInsets.symmetric(horizontal: 45, vertical: 19),
            ),
            backgroundColor: MaterialStateProperty.resolveWith(getColor),
            foregroundColor: MaterialStateProperty.resolveWith(getColor2)),
        onPressed: viewModel.showSignDialog,
        child: Text(
          'Sign In',
          style: ktsBodyRegular,
        ));
  }

  @override
  HomeViewModel viewModelBuilder(BuildContext context) => HomeViewModel();
}

Color getColor(Set<MaterialState> states) {
  const Set<MaterialState> interactiveStates = <MaterialState>{
    MaterialState.hovered,
    // MaterialState.focused
    // MaterialState.pressed
  };
  if (states.any(interactiveStates.contains)) {
    return kcPurple;
  }
  return kcGrey;
}

Color getColor2(Set<MaterialState> states) {
  if (states.contains(MaterialState.hovered)) {
    return kcWhite;
  }
  return kcBlack;
}

Widget textButton1() => TextButton(
    style: ButtonStyle(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.symmetric(horizontal: 45, vertical: 19),
        ),
        backgroundColor: MaterialStateProperty.resolveWith(getColor),
        foregroundColor: MaterialStateProperty.resolveWith(getColor2)),
    onPressed: () {},
    child: Text(
      'Sign In',
      style: ktsBodyRegular,
    ));
