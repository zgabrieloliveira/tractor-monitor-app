import 'package:flutter/material.dart';

class AppTheme {

  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);

  static void switchTheme() {
    if (themeNotifier.value == ThemeMode.light) {
      themeNotifier.value = ThemeMode.dark;
    } else {
      themeNotifier.value = ThemeMode.light;
    }
  }


  static ThemeData baseTheme(bool isDark) {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: isDark ? Brightness.dark : Brightness.light,
          primary: Colors.red,
          secondary: Colors.black45,
          tertiary: Colors.white,
          onError: Colors.redAccent,
          primaryContainer: Colors.red
      ),
    );
  }

}