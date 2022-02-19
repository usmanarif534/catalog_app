import 'package:flutter/material.dart';

// Method for LIGHT THEME
ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 209, 228, 236),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blue,
      // titleTextStyle: TextStyle(
      //   color: Color.fromARGB(255, 5, 26, 43),
      // ),
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.black,
      ),
    ),
  );
}

// Method for DARK THEME
ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: Color.fromARGB(255, 5, 26, 43),
    appBarTheme: const AppBarTheme(
      backgroundColor: Color.fromARGB(255, 2, 17, 29),
      // titleTextStyle: TextStyle(
      //   color: Color.fromARGB(255, 138, 197, 224),
      //   fontSize: 12,
      // ),
      centerTitle: true,
    ),
    textTheme: const TextTheme(
      bodyText1: TextStyle(
        color: Colors.white,
      ),
    ),
  );
}
