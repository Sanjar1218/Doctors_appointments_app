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
    titleLarge: TextStyle(color: Colors.black),
    titleMedium: TextStyle(color: Colors.black),
    titleSmall: TextStyle(color: Colors.black),
  ),
  primaryColor: Colors.blue,
);
