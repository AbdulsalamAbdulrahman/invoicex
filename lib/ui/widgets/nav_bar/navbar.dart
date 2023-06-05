import 'package:flutter/material.dart';
import 'package:invoicex/ui/widgets/nav_bar/navbar_tabletdesktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (_) => const NavBarTabletDesktop(),
      // mobile: (_) => const NavBarMobile(),
    );
  }
}
