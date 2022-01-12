import 'package:flutter/material.dart';

ThemeData buildShrineTheme() {
  final ThemeData base = ThemeData.light();

  return base.copyWith(
      colorScheme: _colorScheme,
      appBarTheme: _appBarTheme(base.appBarTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(style: _elevatedButtonStyle),
      scaffoldBackgroundColor:
          backgroundWhite, //define o background do scaffold
      cardColor: primaryColorwhite, //define o background do card
      buttonTheme: const ButtonThemeData(
          textTheme: ButtonTextTheme.normal, colorScheme: _colorScheme),
      primaryIconTheme: _customIconTheme(base.iconTheme),
      textTheme: _buildTextTheme(base.textTheme),
      primaryTextTheme: _buildTextTheme(base.primaryTextTheme),
      inputDecorationTheme: _inputDecorationTheme(base.inputDecorationTheme),
      iconTheme: _customIconTheme(base.iconTheme));
}

AppBarTheme _appBarTheme(AppBarTheme base) {
  return base.copyWith(elevation: 0, centerTitle: true);
}

ButtonStyle _elevatedButtonStyle = ElevatedButton.styleFrom(
    primary: blue500,
    padding: const EdgeInsets.all(12),
    onPrimary: primaryColorwhite,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)));

InputDecorationTheme _inputDecorationTheme(InputDecorationTheme base) {
  return base.copyWith(
      errorBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: errorRed)),
      border: const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: blue500)),
      enabledBorder:
          const OutlineInputBorder(borderSide: BorderSide(color: blue700)),
      contentPadding: const EdgeInsets.all(16),
      alignLabelWithHint: true);
}

IconThemeData _customIconTheme(IconThemeData original) {
  return original.copyWith(color: blue500); //define a cor dos icones
}

TextTheme _buildTextTheme(TextTheme base) {
  return base
      .copyWith(
          caption: base.caption!.copyWith(
              fontWeight: FontWeight.w400,
              fontSize: 18,
              letterSpacing: defaultLetterSpacing),
          button: base.button!.copyWith(
              //mexe com a fonte do botão
              fontWeight: FontWeight.w500,
              fontSize: 16,
              letterSpacing: defaultLetterSpacing))
      .apply(
          fontFamily: 'Roboto', displayColor: blue700, bodyColor: Colors.black);
}

const ColorScheme _colorScheme = ColorScheme(
    primary: primaryColorwhite,
    primaryVariant: primaryColorwhite,
    secondary: blue500,
    secondaryVariant: blue700,
    surface: surfaceWhite,
    background: primaryColorwhite,
    error: errorRed,
    onPrimary: Colors.black,
    onSecondary: primaryColorwhite,
    onSurface: Colors.black,
    onBackground: Colors.black,
    onError: primaryColorwhite,
    brightness: Brightness.light);

const Color primaryColorwhite = Colors.white;

const Color blue50 = Color(0xFFCFD3E5);
const Color blue500 = Color(0xFF07207B);
const Color blue700 = Color(0xFF041140);

const Color errorRed = Color(0xFFBA0F0F);

const Color surfaceWhite = Color(0xFFFFFBFA);
const Color backgroundWhite = Colors.white;

const defaultLetterSpacing = 0.03;
