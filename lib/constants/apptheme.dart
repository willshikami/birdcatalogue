import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    // brightness: Brightness.dark,
    // accentColor: Colors.cyan[600],
    primaryColor: Colors.lightBlue[800],
    splashColor: Color(0xFFFFFFFF),
    accentColor: Color(0xFF3C90E0),
    textSelectionHandleColor: Color(0xFFA7A6A6),
    textSelectionColor: Colors.black,

    // Default font family.
    fontFamily: 'Roboto',

    // Text Theme
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      headline2: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
      headline3: TextStyle(
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      ),
      headline4: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
      ),
    ),
  );
}
