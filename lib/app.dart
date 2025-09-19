import 'colors.dart';
import 'package:flutter/material.dart';
// import 'supplemental/cut_corners_border.dart';

ThemeData get kanaTheme => _buildKanaTheme();

ThemeData _buildKanaTheme() {
  inputDecorationTheme:
  const InputDecorationTheme(
    border: OutlineInputBorder(),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 2.0, color: kanaRed),
    ),
    floatingLabelStyle: TextStyle(color: kanaRed),
  );

  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kanaRed,
      secondary: kanaLightRed,
      error: kErrorRed,
    ),
    scaffoldBackgroundColor: kBackgroundWhite,
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kanaLightRed,
    ),
    appBarTheme: const AppBarTheme(
      foregroundColor: kanaRed,
      backgroundColor: kanaLightRed,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 2.0, color: kanaRed),
      ),
      floatingLabelStyle: TextStyle(color: kanaRed),
    ),
  );
}

TextTheme _buildKanaTextTheme(TextTheme base) {
  return base
      .copyWith(
        headlineSmall: base.headlineSmall!.copyWith(
          fontWeight: FontWeight.w500,
        ),
        titleLarge: base.titleLarge!.copyWith(fontSize: 18.0),
        bodySmall: base.bodySmall!.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14.0,
        ),
        bodyLarge: base.bodyLarge!.copyWith(
          fontWeight: FontWeight.w500,
          fontSize: 16.0,
        ),
      )
      .apply(
        fontFamily: 'Rubik',
        displayColor: kTextBlack,
        bodyColor: kTextLightBlack,
      );
}
