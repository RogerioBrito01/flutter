import 'package:flutter/material.dart';

final ThemeData appThemeData= ThemeData(
    primaryColor: Colors.cyan,
    buttonColor: Colors.cyan,
    brightness: Brightness.light,
    appBarTheme: const AppBarTheme(color: Colors.cyan),
    colorScheme:
        ColorScheme.fromSwatch().copyWith(secondary: Colors.cyan[660]));
