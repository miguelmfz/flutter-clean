import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Settings {
  Settings._();

  // Colors
  static MaterialColor primarySwatch = MaterialColor(0xFF93cd48, {
    50: Color.fromRGBO(147, 205, 72, .1),
    100: Color.fromRGBO(147, 205, 72, .2),
    200: Color.fromRGBO(147, 205, 72, .3),
    300: Color.fromRGBO(147, 205, 72, .4),
    400: Color.fromRGBO(147, 205, 72, .5),
    500: Color.fromRGBO(147, 205, 72, .6),
    600: Color.fromRGBO(147, 205, 72, .7),
    700: Color.fromRGBO(147, 205, 72, .8),
    800: Color.fromRGBO(147, 205, 72, .9),
    900: Color.fromRGBO(147, 205, 72, 1)
  });
  static const primaryColor = Colors.lightGreen;
  static const secondaryColor = Colors.grey;
  static const alternativeColor = Colors.black54;
  static Color circleCountColor = Colors.deepOrangeAccent[200]!;
  static Color shoppingCartColor = Colors.white;

  // FontColors
  static Color fontCircleCountColor = Colors.white;
  static Color fontAppBarHomeTitleColor = Colors.white;

  // Sizes
  static const fontSizeCircleCount = 12.0;
  static const fontSizeAppBarHomeTitle = 22.0;
  static const shoppingCartIconSize = 28.0;
  static const defaultPadding = 8.0;

  // Styles
  static TextStyle circleCountStyle = GoogleFonts.nunito(
      fontSize: Settings.fontSizeCircleCount,
      color: Settings.fontCircleCountColor,
      fontWeight: FontWeight.w600,
  );

  static TextStyle appBarHomeTitleStyle = GoogleFonts.nunito(
      fontSize: Settings.fontSizeAppBarHomeTitle,
      color: Settings.fontAppBarHomeTitleColor,
      fontWeight: FontWeight.w600,
  );

  static const titleAppBarHome = "PandiStore V2";
  static const pay = "PAGAR";
}