import 'package:flutter/material.dart';
import 'package:to_do/core/global/theme/app_color/app_color_light.dart';

ThemeData themeDataLight = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: AppColorLight.scaffoldbackground,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColorLight.floatingactionbutton,
    foregroundColor: Colors.white,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColorLight.filledbutton,
      foregroundColor: Colors.white,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColorLight.filledbutton;
      }
      return Colors.white;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(Colors.white),
    trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColorLight.filledbutton;
      }
      return Colors.grey;
    }),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: Colors.white,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Colors.black87),
    bodyMedium: TextStyle(color: Colors.black87),
  ),
);

