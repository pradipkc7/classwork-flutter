import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.grey[100],
    fontFamily: ' Montserrat Regular',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
        backgroundColor: Colors.orange,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    ),

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: Colors.yellow,
      elevation: 4,
      shadowColor: Colors.black,
      titleTextStyle: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
