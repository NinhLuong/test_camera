import 'dart:ui';

import 'package:flutter/material.dart';

const Color PRIMARY = Color(0xff0b59c8);
const Color SELECTED = Color(0xffd7e6fd);
const Color PURE_WHITE = Colors.white;
const Color ERROR = Color(0xffdb1a1a);
const Color UNDER_ERROR = Color(0xfffdf3f3);
const Color SUCCESS = Color(0xff29a62b);
const Color UNDER_SUCCESS = Color(0xffeaf7ea);
const Color BLACK_100 = Color(0xff333333);
const Color BLACK_70 = Color(0xff6a6a6a);
const Color BLACK_68 = Color(0xff6b6b6b);
const Color BLACK_50 = Color(0xffb4b4b4);
const Color BLACK_30 = Color(0xffd2d2d2);
const Color BLACK_85 = Color(0xffd9d9d9);
const Color DIVIDER = Color(0xffe9e9e9);

const MAIN_COLOR_THEME = ColorScheme(
  brightness: Brightness.light,
  primary: PRIMARY,
  onPrimary: PURE_WHITE,
  secondary: PURE_WHITE,
  onSecondary: PRIMARY,
  background: PURE_WHITE,
  onBackground: BLACK_100,
  surface: PURE_WHITE,
  onSurface: BLACK_100,
  error: ERROR,
  onError: PURE_WHITE,
  outline:BLACK_50,
  errorContainer: ERROR,
  primaryContainer: PURE_WHITE,


);
