import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
    // Define the default brightness and colors.
    // brightness: Brightness.dark,
    // accentColor: Colors.cyan[600],
    primaryColor: Colors.lightBlue[800],
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
        fontSize: 18.0,
        fontStyle: FontStyle.normal,
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
      ),
    ),
  );
}
