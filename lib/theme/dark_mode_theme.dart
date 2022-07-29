import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';
import 'package:multi_theme/theme/main_theme_app.dart';

class DarkModeTheme implements MainThemeApp {
  @override
  ThemeData themeData = ThemeData(
    primaryColor: Colors.white,
    backgroundColor: Colors.black,
  );
}
