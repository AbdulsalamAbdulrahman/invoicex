import 'package:flutter/material.dart';

const Color kcPrimaryColor = Color(0xFF9600FF);
const Color kcPrimaryColorDark = Color(0xFF300151);
const Color kcBlack = Color(0xFF000000);
const Color kcDarkGreyColor = Color(0xFF1A1B1E);
const Color kcMediumGrey = Color(0xFF474A54);
const Color kcLightGrey = Color.fromARGB(255, 187, 187, 187);
const Color kcVeryLightGrey = Color(0xFFE3E3E3);
const Color kcWhite = Color(0xFFFFFFFF);
const Color kcBackgroundColor = kcDarkGreyColor;
const Color kcPurple = Color.fromRGBO(102, 93, 245, 2);
const Color kcGrey = Color.fromARGB(255, 229, 226, 226);
const Color kcP = Color(0XFF665df5);

const List<Color> kgTitle = [kcTitleGradientLeft, kcTitleGradientRight];
const Color kcTitleGradientLeft = Color(0xff0CFF60);
const Color kcTitleGradientRight = Color(0xff0091FB);

const IconThemeData kcIconTheme = IconThemeData(color: kcPurple);

// theme
const InputDecorationTheme decorationTheme = InputDecorationTheme(
  filled: true,
  iconColor: kcPurple,
  prefixIconColor: kcPurple,
  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
  border: OutlineInputBorder(
    // borderRadius: BorderRadius.all(Radius.circular(30)),
    borderSide: BorderSide.none,
  ),
);

ElevatedButtonThemeData eButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    elevation: 0,
    backgroundColor: kcPurple,
    // shape: const StadiumBorder(),
    maximumSize: const Size(double.infinity, 56),
    minimumSize: const Size(double.infinity, 56),
  ),
);
