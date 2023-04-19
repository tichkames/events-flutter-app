import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final TextTheme _basePoppins = GoogleFonts.poppinsTextTheme();

final poppins = _basePoppins.copyWith(
  headlineSmall: _basePoppins.headlineSmall?.copyWith(
    fontSize: 24,
    fontWeight: FontWeight.w600,
  ),
  titleMedium: _basePoppins.titleMedium?.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w600,
  ),
  bodySmall: _basePoppins.bodySmall?.copyWith(
    fontSize: 13,
    fontWeight: FontWeight.w400,
  ),
  bodyMedium: _basePoppins.bodyMedium?.copyWith(
    fontSize: 15,
    fontWeight: FontWeight.w600,
  ),
  bodyLarge: _basePoppins.bodyLarge?.copyWith(
    fontSize: 17,
    fontWeight: FontWeight.w400,
  ),
);
