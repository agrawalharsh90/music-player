import 'package:flutter/material.dart';

abstract class Styles {
  // COLORS
  static Color primaryColor = Colors.brown.withOpacity(0.2);
  static const Color whiteColor = Colors.white;
  static const Color disableColor = Color.fromRGBO(200, 200, 200, 1.0);
  static const Color greyBgColor = Color.fromRGBO(245, 245, 245, 1);

  // FONT-COLORS
  static const Color headingColor = Color.fromRGBO(50, 50, 50, 1.0);
  static const Color bodyColor = Color.fromRGBO(25, 25, 25, 1);
  static const Color bodyLightColor = Color.fromRGBO(125, 125, 125, 1);

  // FONT-SIZES
  static double heading = 22;
  static double bodyText = 18;
  static double smallText = 14;
  static double verySmallText = 12;
}
