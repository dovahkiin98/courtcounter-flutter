import 'package:courtcounter/theme/colors.dart';
import 'package:flutter/material.dart';

final theme = ThemeData.light().copyWith(
  primaryColor: ColorRes.colorPrimary,
  accentColor: ColorRes.colorAccent,
  colorScheme: ColorScheme.light(
    primary: ColorRes.colorPrimary,
    secondary: ColorRes.colorAccent,
    onPrimary: Colors.white,
  ),
);

final darkTheme = ThemeData.dark().copyWith(
  primaryColor: ColorRes.colorPrimary,
  accentColor: ColorRes.colorAccent,
  colorScheme: ColorScheme.dark(
    primary: ColorRes.colorPrimary,
    secondary: ColorRes.colorAccent,
    onPrimary: Colors.white,
  ),
);