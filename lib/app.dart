import 'package:flutter/material.dart';

import 'colors.dart';
import 'login.dart';
import 'home.dart';

class KanaApp extends StatelessWidget {
  const KanaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KANA',
      theme: _kanaTheme,
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/home': (BuildContext context) => const HomePage(),
      },
    );
  }
}

@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'KANA',
    initialRoute: '/login',
    routes: {
      '/login': (BuildContext context) => const LoginPage(),
      '/home': (BuildContext context) => const HomePage(),
    },
  );
}

final ThemeData _kanaTheme = _buildKanaTheme();

ThemeData _buildKanaTheme() {
  final ThemeData base = ThemeData.light(useMaterial3: true);
  return base.copyWith(
    colorScheme: base.colorScheme.copyWith(
      primary: kanaRed,
      secondary: kanaLightRed,
      error: kErrorRed,
    ),
    textTheme: _buildKanaTextTheme(base.textTheme),
    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: kanaLightRed,
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
