import 'package:flutter/material.dart';
import 'package:to_do/core/global/theme/theme_data/theme_data_dark.dart';
import 'package:to_do/core/global/theme/theme_data/theme_data_light.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.light;
  bool _isDarkMode = false;

  ThemeMode get themeMode => _themeMode;
  bool get isDarkMode => _isDarkMode;
  ThemeData get currentTheme => _isDarkMode ? themeDataDark : themeDataLight;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    _themeMode = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  void setTheme(bool isDark) {
    _isDarkMode = isDark;
    _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

