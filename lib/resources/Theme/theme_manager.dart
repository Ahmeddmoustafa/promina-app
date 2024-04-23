import 'package:flutter/material.dart';

class ThemeManager with ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;

  get themeMode => _themeMode;

  toggleTheme(bool isDark) {
    isDark ? _themeMode = ThemeMode.dark : _themeMode = ThemeMode.light;
  }
}
