import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.teal,
  Colors.cyan,
  Colors.amber,
  Color.fromARGB(255, 200, 100, 20),
];

class AppTheme {
  final int selectedColor;
  final bool dark;

  AppTheme({this.dark = true, this.selectedColor = 0});

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectedColor],
    brightness: dark? Brightness.dark: Brightness.light,
    appBarTheme: AppBarTheme(centerTitle: true, backgroundColor: Colors.red),
  );
}
