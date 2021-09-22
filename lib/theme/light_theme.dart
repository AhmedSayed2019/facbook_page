import 'package:flutter/material.dart';

import 'package:task/utility/color_resources.dart';
import 'package:task/utility/dimensions.dart';

ThemeData lightTheme = ThemeData(
  fontFamily: 'Poppins',
  brightness: Brightness.light,
  buttonColor: ColorResources.COLOR_WHITE,
  scaffoldBackgroundColor: ColorResources.colorBackground,

  hintColor: Colors.grey,
  primaryColorLight: ColorResources.colorPrimary,
  canvasColor: ColorResources.colorPrimary,

  shadowColor:  ColorResources.shadowColor,
  backgroundColor:  ColorResources.colorBackground, // for background color
  cardColor:  ColorResources.COLOR_WHITE, // for surface color
  primaryColor:  ColorResources.colorPrimary, // for primary color
  focusColor:  ColorResources.COLOR_NERO,  // for On Surface text color
  dividerColor: ColorResources.dividerColor, // for Any line
  errorColor: ColorResources.colorPrimary,  // for error color
  primaryColorDark:ColorResources.COLOR_WHITE,  // for on primary color

  textTheme: const TextTheme(
    button: TextStyle(color: Colors.white),

    headline1: TextStyle(fontWeight: FontWeight.w300, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline2: TextStyle(fontWeight: FontWeight.w400, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline3: TextStyle(fontWeight: FontWeight.w500, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline4: TextStyle(fontWeight: FontWeight.w600, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline5: TextStyle(fontWeight: FontWeight.w700, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    headline6: TextStyle(fontWeight: FontWeight.w800, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),
    caption: TextStyle(fontWeight: FontWeight.w900, color: ColorResources.COLOR_BLACK, fontSize: Dimensions.FONT_SIZE_DEFAULT),



    subtitle1: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500),
    bodyText2: TextStyle(fontSize: 12.0),
    bodyText1: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600),
  ),
);