import 'package:flutter/material.dart';

class AppTypography {
  AppTypography._();

  static const title2ExtraBold = TextStyle(
    fontFamily: 'Red Hat Text',
    fontSize: 20,
    fontWeight: FontWeight.w700,
    height: 1.4,
    letterSpacing: 0.38,
  );

  static const caption2 = TextStyle(
    fontFamily: 'Red Hat Text',
    fontSize: 12,
    fontWeight: FontWeight.w400,
    height: 1.33,
    letterSpacing: 0,
  );

  static const headlineMedium = TextStyle(
    fontFamily: 'Red Hat Text',
    fontSize: 16,
    fontWeight: FontWeight.w500,
    height: 1.25,
    letterSpacing: -0.32,
  );

  static const searchText = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12, 
    fontWeight: FontWeight.w400,
    height: 1.0,
    letterSpacing: -0.3,
  );

  static const captionMini = TextStyle(
    fontFamily: 'Red Hat Text',
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 0,
    height: 1.0,
  );

  static const captionMiniBold = TextStyle(
    fontFamily: 'Red Hat Text',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.0,
  );

  static const pricePoppins = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontWeight: FontWeight.w700,
    letterSpacing: 0,
    height: 1.0,
  );
}