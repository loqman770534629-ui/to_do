import 'package:flutter/material.dart';
import 'package:to_do/featuers/home/pages/home_page.dart';
import 'package:provider/provider.dart';
import 'package:to_do/model/jobs_data.dart';
import 'package:to_do/core/global/theme/theme_provider.dart';
import 'package:to_do/core/global/theme/theme_data/theme_data_light.dart';
import 'package:to_do/core/global/theme/theme_data/theme_data_dark.dart';

void main() {
  runApp(const Todo());
}

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => JobsData()),
        ChangeNotifierProvider(create: (context) => ThemeProvider()),
      ],
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: themeDataLight,
            darkTheme: themeDataDark,
            themeMode: themeProvider.themeMode,
            home: HomePage(),
          );
        },
      ),
    );
  }
}
