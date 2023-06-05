import 'package:flutter/material.dart';
import 'package:invoicex/ui/views/home/widgets/home/sign_in_button.dart';
import 'package:invoicex/ui/widgets/nav_bar/navbar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 100,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                SignInButton(),
              ],
            )
          ]),
    );
  }
}
