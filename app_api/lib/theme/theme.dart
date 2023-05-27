import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(headline4: TextStyle(fontSize: 20.5)),
  );
}

ThemeData darkTheme() {
  return ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextTheme(headline4: TextStyle(fontSize: 20.5)),
  );
}
