import 'package:flutter/material.dart';

class Warna {
  /// primary color /
  static const Color primaryColor = Color(0xFF525298);
  static const Color primaryColorLight = Color(0xFFF3F3F8);
  static const Color darkGrey = Color(0xFF839198);
  static const Color lightGrey = Color(0xFFE2E2E2);
  static const Color lightGrey2 = Color(0xFFF3F3F8);
  static const Color white = Color(0xFFFFFFFF);
  static const Color red = Color(0xFFFF4C01);
  static const Color orange = Color(0xFFFFBF47);
  static const Color purple = Color(0xFF2C2C63);
  static const Color mediumPurple = Color(0xFF7B61FF);
  static const Color lightPurple = Color(0xFFF9D7FF);
  static const Color lightPurple2 = Color(0xFFE3E0FF);
  static const Color blue = Color(0xFFCCEEFF);
  static const Color baseDark = Color(0xFF2C2C63);




  static Color hexToColor(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return new Color(int.parse(hexColor, radix: 16) + 0xFF000000);
  }

  static Color hexToColorTrans(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return new Color(int.parse(hexColor, radix: 16) + 0xFF000000)
        .withOpacity(0.3);
  }

  static Map<int, Color> mapPrimaryColorLight = {
    50: Color.fromRGBO(243, 243, 248, .1),
    100: Color.fromRGBO(243, 243, 248, .2),
    200: Color.fromRGBO(243, 243, 248, .3),
    300: Color.fromRGBO(243, 243, 248, .4),
    400: Color.fromRGBO(243, 243, 248, .5),
    500: Color.fromRGBO(243, 243, 248, .6),
    600: Color.fromRGBO(243, 243, 248, .7),
    700: Color.fromRGBO(243, 243, 248, .8),
    800: Color.fromRGBO(243, 243, 248, .9),
    900: Color.fromRGBO(243, 243, 248, 1),
  };

  static Map<int, Color> mapPrimaryColor = {
    50: Color.fromRGBO(82, 82, 152, .1),
    100: Color.fromRGBO(82, 82, 152, .2),
    200: Color.fromRGBO(82, 82, 152, .3),
    300: Color.fromRGBO(82, 82, 152, .4),
    400: Color.fromRGBO(82, 82, 152, .5),
    500: Color.fromRGBO(82, 82, 152, .6),
    600: Color.fromRGBO(82, 82, 152, .7),
    700: Color.fromRGBO(82, 82, 152, .8),
    800: Color.fromRGBO(82, 82, 152, .9),
    900: Color.fromRGBO(82, 82, 152, 1),
  };

  static MaterialColor materialPrimaryColorLight = MaterialColor(0xFFF3F3F8, mapPrimaryColorLight);
  static MaterialColor materialPrimaryColor = MaterialColor(0xFF525298, mapPrimaryColor);

}

// Following are some example transparency percentages and their hex values
//  table of percentages to hex values
//  100% — FF
//  95% — F2
//  90% — E6
//  85% — D9
//  80% — CC
//  75% — BF
//  70% — B3
//  65% — A6
//  60% — 99
//  55% — 8C
//  50% — 80
//  45% — 73
//  40% — 66
//  35% — 59
//  30% — 4D
//  25% — 40
//  20% — 33
//  15% — 26
//  10% — 1A
//  5% — 0D
//  0% — 00
//For an example if you want 50% transparent white color you have to use #80FFFFFF color code
