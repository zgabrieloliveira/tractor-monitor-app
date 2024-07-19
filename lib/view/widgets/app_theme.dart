import 'package:flutter/material.dart';
import 'package:tractor_monitor_app/util/constants.dart';

class AppTheme {

  static final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.system);

  static void switchTheme() {
    if (themeNotifier.value == ThemeMode.light) {
      themeNotifier.value = ThemeMode.dark;
    } else {
      themeNotifier.value = ThemeMode.light;
    }
  }


  static ThemeData baseTheme() {
    return ThemeData(
      useMaterial3: true,
      appBarTheme: const AppBarTheme(
        elevation: 10,
        backgroundColor: DARK_GREEN,
        foregroundColor: WHITE,
      ),
      colorScheme: ColorScheme.fromSeed(
          seedColor: DARK_GREEN,
          brightness: themeNotifier.value == ThemeMode.dark ? Brightness.dark : Brightness.light,
          primary: DARK_GREEN,
          secondary: WHITE,
          onError: DARK_RED,
      ),
    );
  }

}