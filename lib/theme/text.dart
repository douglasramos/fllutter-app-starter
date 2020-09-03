import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// https://material.io/design/typography/the-type-system.html#type-scale
TextTheme get textTheme => TextTheme(
      headline1: GoogleFonts.montserrat(
          fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
      headline2: GoogleFonts.montserrat(
          fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
      headline3:
          GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w400),
      headline4: GoogleFonts.montserrat(
          fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      headline5:
          GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w400),
      headline6: GoogleFonts.montserrat(
          fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
      subtitle1: GoogleFonts.montserrat(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
      subtitle2: GoogleFonts.montserrat(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
      bodyText1: GoogleFonts.raleway(
          fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
      bodyText2: GoogleFonts.raleway(
          fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
      button: GoogleFonts.raleway(
          fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
      caption: GoogleFonts.raleway(
          fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
      overline: GoogleFonts.raleway(
          fontSize: 11, fontWeight: FontWeight.w400, letterSpacing: 1.5),
    );
