import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0xFF2B2E4A),
    // primaryColorDark: Color(0xFFFC0028),
    // primaryColorLight: Color(0xFFFE9AAA),
    hintColor: Color(0xFFE84545),
    scaffoldBackgroundColor: Colors.white,
    // backgroundColor: Color(0xFFF4F4F4),

    fontFamily: 'Optima',
    textTheme: TextTheme(
      displayLarge: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      displayMedium: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      displaySmall: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headlineMedium: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headlineSmall: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      titleLarge: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyLarge: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyMedium: TextStyle(
        color: Color(0xFF2B2E4A),
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}

/*ThemeData() {
  primaryColor:
  Colors.blue; // Set the primary color
  accentColor:
  Colors.orange; // Set the accent color
  fontFamily:
  'Roboto'; // Set the default font family
  textTheme:
  TextTheme(
    // Define text styles
    displayLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    titleLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
    bodyLarge: TextStyle(fontSize: 16, color: Colors.black),
    bodyText2: TextStyle(fontSize: 14, color: Colors.grey),
  );
}*/
