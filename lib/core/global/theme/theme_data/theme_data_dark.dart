import 'package:flutter/material.dart';
import 'package:to_do/core/global/theme/app_color/app_color_dark.dart';

ThemeData themeDataDark = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: AppColorDark.scaffoldbackground,
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: AppColorDark.floatingactionbutton,
    foregroundColor: Colors.white,
  ),
  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: AppColorDark.filledbutton,
      foregroundColor: Colors.white,
    ),
  ),
  checkboxTheme: CheckboxThemeData(
    fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColorDark.filledbutton;
      }
      return Colors.white;
    }),
  ),
  switchTheme: SwitchThemeData(
    thumbColor: WidgetStateProperty.all(Colors.white),
    trackColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      if (states.contains(WidgetState.selected)) {
        return AppColorDark.floatingactionbutton;
      }
      return Colors.grey[800]!;
    }),
  ),
  drawerTheme: const DrawerThemeData(
    backgroundColor: AppColorDark.drawerBackground,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: AppColorDark.textPrimary),
    bodyMedium: TextStyle(color: AppColorDark.textPrimary),
  ),
  cardColor: AppColorDark.cardBackground,
);

