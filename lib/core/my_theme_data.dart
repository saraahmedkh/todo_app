import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static ThemeData lighttheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: Colors.blue,
      onPrimary: Color(0XFF7B7B7B),
      secondary: Colors.black,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0XFFF2FEFF),
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,
      color: Colors.blue,
    ),
      bodySmall: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      displayLarge: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
        ),
  );
  static ThemeData Darktheme = ThemeData(
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: Colors.blue,
      onPrimary: Color(0XFF7B7B7B),
      secondary: Colors.black,
      onSecondary: Colors.white,
      error: Colors.red,
      onError: Colors.white,
      surface: Color(0xFF101127),
      onSurface: Colors.white,
    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.inter(fontSize: 16,fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      bodySmall: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
      displayLarge: GoogleFonts.inter(fontSize: 20,fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
    ),
  );
}
