import 'package:flutter/material.dart';
import 'model/product.dart';
import 'colors.dart';
import 'home.dart';
import 'login.dart';
import 'category_menu_page.dart';
import 'backdrop.dart';
import 'supplemental/cut_corners_border.dart';

class KanaApp extends StatefulWidget {
  const KanaApp({Key? key}) : super(key: key);

  @override
  _KanaAppState createState() => _KanaAppState();
}

class _KanaAppState extends State<KanaApp> {
  Category _currentCategory = Category.all; // Define the state variable

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KANA',
      initialRoute: '/login',
      routes: {
        '/login': (BuildContext context) => const LoginPage(),
        '/': (BuildContext context) => Backdrop(
          currentCategory: _currentCategory,
          frontLayer: HomePage(category: _currentCategory),
          backLayer: CategoryMenuPage(
            currentCategory: _currentCategory,
            onCategoryTap: _onCategoryTap,
          ),
          frontTitle: Text('KANA'),
          backTitle: Text('MENU'),
        ),
      },
      theme: _kanaTheme, // Make sure this is defined
    );
  }

  void _onCategoryTap(Category category) {
    setState(() {
      _currentCategory = category;
    });
  }
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
    appBarTheme: const AppBarTheme(
      foregroundColor: kanaLightRed,
      backgroundColor: kanaRed,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: CutCornersBorder(),
      focusedBorder: CutCornersBorder(
        borderSide: BorderSide(width: 2.0, color: kanaLightRed),
      ),
      floatingLabelStyle: TextStyle(color: kanaDarkRed),
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
        bodyColor: kTextBlack,
      );
}
