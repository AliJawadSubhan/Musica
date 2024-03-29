import 'package:auto_size_text/auto_size_text.dart';
// import 'package:employee_management_system/configs/constants/fonts_configs/fonts_constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../configs/constants/fonts_configs/fonts_constants.dart';

Widget customTextWidget({
  required String text,
  double fontSize = 16.0,
  Color color = Colors.black,
  String fontNameP = FontsConstants.robotofont,
  FontWeight fontWeight = FontWeight.w600,
  TextOverflow overflow = TextOverflow.visible,
  double lineHeight = 1.2,
  TextAlign textAlign = TextAlign.start,
  double? letterSpacing,
  int? maxLines,
  bool fixText = false,
  isPlusJakartaFont = false,
  TextDecoration? jakartaDecoration,
}) {
  return fixText
      ? AutoSizeText(text.toString(),
          maxLines: maxLines,
          textAlign: textAlign,
          style: GoogleFonts.getFont(fontNameP,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: lineHeight,
              textStyle: TextStyle(
                decoration: jakartaDecoration ?? TextDecoration.none,
                overflow: overflow,
              )))
      : Text(text.toString(),
          textAlign: textAlign,
          style: GoogleFonts.getFont(fontNameP,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              height: lineHeight,
              textStyle: TextStyle(
                decoration: jakartaDecoration ?? TextDecoration.none,
                overflow: overflow,
              )));
}
