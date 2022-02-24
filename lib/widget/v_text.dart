import 'package:flutter/material.dart';

import 'package:dishub_e_pendapatan_flutter/util/utils.dart';


Widget vText(String title, {
  Color color = Colors.black,
  double? fontSize,
  FontWeight? fontWeight,
  TextOverflow overflow = TextOverflow.fade,
  TextAlign align = TextAlign.left,
  bool money = false,
  bool number = false,
  bool poppins = true,
  decoration,
  int maxLines = 1,
  letterSpacing,
  FontStyle? fontStyle,
}) {
  return Text(
    title != null && title != "null"
        ? money || number
        ? Utils().formatNumberToRupiah(int.parse(title))
        : title
        : title,
    style: TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
      decoration: decoration,
      fontFamily: 'quicksand',
      fontStyle: fontStyle ?? FontStyle.normal,
      letterSpacing: letterSpacing ?? null,
    ),
    overflow: TextOverflow.ellipsis,
    textAlign: align,
    maxLines: maxLines,
  );
}
