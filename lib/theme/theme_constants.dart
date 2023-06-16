import 'package:flutter/material.dart';

final kIconColor = Colors.grey.shade700;

ThemeData mainTheme = ThemeData(
  brightness: Brightness.light,
  appBarTheme: AppBarTheme(
      backgroundColor: Colors.grey.shade300,
      titleTextStyle: const TextStyle(
        color: Colors.black87,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      iconTheme: IconThemeData(
        color: kIconColor,
      )),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
);
