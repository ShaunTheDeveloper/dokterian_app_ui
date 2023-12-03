import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeConfig {
  Locale locale;
  static Color primary = Color(0xFF4894FE);

  ThemeConfig(this.locale);

  ThemeData get light => ThemeData(
      colorScheme: ThemeData.light().colorScheme.copyWith(
          primary: primary,
          onPrimary: Colors.white,
          onSurface: Colors.white,
          secondary: Color(0x1963B4FF)),
      textTheme: english);

  ThemeData get dark => ThemeData(
      colorScheme: ThemeData.light().colorScheme.copyWith(),
      textTheme: english);

  TextTheme get english => TextTheme(
        labelSmall: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
        labelMedium: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),
        titleMedium: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w700)),
        titleSmall: GoogleFonts.poppins(
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
      );
}
