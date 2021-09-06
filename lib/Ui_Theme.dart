import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_blackwhite_02/constColors.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
      primaryColor: kPrimaryGreen,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(),
      iconTheme: IconThemeData(color: kContentColorLightTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: kContentColorLightTheme),
      colorScheme: ColorScheme.light(
        primary: kPrimaryGreen,
        secondary: kSecondaryDarkYellow,
        error: kErrorRedColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        selectedItemColor: kContentColorLightTheme.withOpacity(0.7),
        unselectedItemColor: kContentColorLightTheme.withOpacity(0.32),
        selectedIconTheme: IconThemeData(color: kPrimaryGreen),
      ));
}

ThemeData darkThemeData(BuildContext context) {
  return ThemeData.dark().copyWith(
      primaryColor: kPrimaryGreen,
      scaffoldBackgroundColor: kContentColorLightTheme,
      appBarTheme: appBarTheme,
      iconTheme: IconThemeData(color: kContentColorDarkTheme),
      textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme)
          .apply(bodyColor: kContentColorDarkTheme),
      colorScheme: ColorScheme.dark().copyWith(
        primary: kPrimaryGreen,
        secondary: kSecondaryDarkYellow,
        error: kErrorRedColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: kContentColorLightTheme,
        selectedItemColor: Colors.white70,
        unselectedItemColor: kContentColorDarkTheme.withOpacity(0.32),
        selectedIconTheme: IconThemeData(color: kPrimaryGreen),
      ));
}

final appBarTheme = AppBarTheme(centerTitle: false, elevation: 0);
