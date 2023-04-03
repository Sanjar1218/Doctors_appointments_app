import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme = ThemeData(
  primarySwatch: Colors.blue,
  appBarTheme: AppBarTheme(
    elevation: 0.0,
    color: Colors.white,
    titleTextStyle: GoogleFonts.raleway(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  ),
  textTheme: const TextTheme(
    titleLarge: TextStyle(
      color: Colors.white,
      fontSize: 30.0,
      fontWeight: FontWeight.w500,
    ),
    titleSmall: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w200,
      fontSize: 16.0,
    ),
    titleMedium: TextStyle(
      color: Colors.black,
      fontSize: 18.0,
      fontWeight: FontWeight.w500,
    ),
    bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.w500,
    ),
    bodyMedium: TextStyle(
      color: Colors.grey,
      fontWeight: FontWeight.w200,
      fontSize: 16.0,
    ),
  ),

  // Colors schemes
  primaryColor: const Color.fromRGBO(62, 100, 255, 1.0),
  cardColor: const Color.fromRGBO(229, 234, 250, 0.5),
  secondaryHeaderColor: Colors.white,
  colorScheme: const ColorScheme.light(
      primary: Color.fromRGBO(62, 100, 255, 1.0),
      secondary: Colors.white,
      inversePrimary: Colors.black),
);
