import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// https://material.io/design/typography/the-type-system.html#type-scale
TextTheme get textTheme => TextTheme(
      displayLarge: GoogleFonts.montserrat(
          fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      displayMedium: GoogleFonts.montserrat(
          fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      displaySmall:
          GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w400),
      headlineMedium: GoogleFonts.montserrat(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headlineSmall:
          GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w400),
      titleLarge: GoogleFonts.montserrat(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      titleMedium: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      titleSmall: GoogleFonts.montserrat(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyLarge: GoogleFonts.raleway(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyMedium: GoogleFonts.raleway(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      labelLarge: GoogleFonts.raleway(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      bodySmall: GoogleFonts.raleway(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      labelSmall: GoogleFonts.raleway(
          fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );
