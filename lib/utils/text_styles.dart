import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'shared_utils.dart';

TextStyle textStyle(BuildContext context) {
  return TextStyle(
    fontSize: kWidth(context) * 0.035,
    fontFamily: GoogleFonts.sacramento().fontFamily,
  );
}