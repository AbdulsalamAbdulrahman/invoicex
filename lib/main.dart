import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:invoicex/app/app.bottomsheets.dart';
import 'package:invoicex/app/app.dialogs.dart';
import 'package:invoicex/app/app.locator.dart';
import 'package:invoicex/app/app.router.dart';
import 'package:invoicex/ui/common/app_colors.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:flutter_animate/flutter_animate.dart';

void main() {
  setPathUrlStrategy();
  setupLocator(
    stackedRouter: stackedRouter,
  );
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
        preferDesktop: true,
        builder: (_) => MaterialApp.router(
              debugShowCheckedModeBanner: false,
              title: 'InvoiceX',
              theme: Theme.of(context).copyWith(
                  textSelectionTheme:
                      const TextSelectionThemeData(cursorColor: kcPurple),
                  primaryColor: kcPurple,
                  focusColor: kcPurple,
                  textTheme: GoogleFonts.openSansTextTheme().apply(
                    bodyColor: kcBlack,
                  ),
                  inputDecorationTheme: decorationTheme,
                  elevatedButtonTheme: eButtonTheme),
              routerDelegate: stackedRouter.delegate(),
              routeInformationParser: stackedRouter.defaultRouteParser(),
            ).animate().fadeIn(
                  delay: const Duration(milliseconds: 50),
                  duration: const Duration(milliseconds: 400),
                ));
  }
}
