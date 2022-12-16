import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const maincolor = Color(0xffd8af44);
const secondcolor = Color(0xff5f9485);
const blackcolor = Color(0xff080404);
const backgroundcolor = Color(0xff252525);
const whitecolor = Color(0xffffffff);
const graycolor = Color(0xff9f9f9f);


TextTheme TEXT_THEME_DEFAULT = const TextTheme(
  headline1: TextStyle(
      color: maincolor,
      fontSize: 40,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlusJakartaSans'
    ),
  headline2: TextStyle(
    color: whitecolor,
      fontSize: 32,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlusJakartaSans'
    ),
  headline3: TextStyle(
      color: whitecolor,
      fontSize: 20,
      fontFamily: 'PlusJakartaSans'
  ),
  headline4: TextStyle(
      color: whitecolor,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlusJakartaSans',
  ),
  headline5: TextStyle(
      color: whitecolor,
      fontSize: 12,
      fontFamily: 'PlusJakartaSans'
  ),
  headline6: TextStyle(
      color: whitecolor,
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlusJakartaSans'
  ),
  bodyText1: TextStyle(
      color: whitecolor,
      fontSize: 32,
      fontFamily: 'PlusJakartaSans'
    ),
  bodyText2: TextStyle(
      color: whitecolor,
      fontSize: 20,
      fontFamily: 'PlusJakartaSans'
    ),

  subtitle1: TextStyle(
      fontSize: 20,
      color: Colors.blue,
      fontWeight: FontWeight.bold,
      fontFamily: 'PlusJakartaSans'
    ),

);

TextTheme TEXT_THEME_SMALL = TextTheme(
  headline1: const TextStyle(
      color: maincolor,
      fontSize: 40,
      fontWeight: FontWeight.bold,
    ),
  bodyText1: const TextStyle(
    fontSize: 34,
    color: Colors.white,
  ),
  bodyText2: const TextStyle(
    fontSize: 18, color: Colors.white,
  ),
  subtitle1: const TextStyle(
    fontSize: 24,
    color: Colors.blue,
    letterSpacing: 0.3,
  ),
  subtitle2: GoogleFonts.oswald(

  ),
);

