import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppTheme {
  CustomAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.light,
    ),
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.lato().fontFamily,

    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.green,
      brightness: Brightness.dark,
    ),
  );
}
