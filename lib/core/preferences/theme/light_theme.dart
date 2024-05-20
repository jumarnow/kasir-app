import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class LightTime {
  LightTime(this.primaryColor);
  final Color primaryColor;

  final Color errorColor = AppColors.red;
  final Color scaffoldColor = AppColors.white;
  final Color textDisabledColor = AppColors.black[500]!;
  final Color textSolidColor = AppColors.black;
  final Color borderColor = AppColors.white[500]!;

  TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          fontSize: Dimens.dp32,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        headlineMedium: TextStyle(
          fontSize: Dimens.dp24,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        headlineSmall: TextStyle(
          fontSize: Dimens.dp20,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        titleMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w600,
          color: textSolidColor,
        ),
        bodyLarge: TextStyle(
          fontSize: Dimens.dp16,
          fontWeight: FontWeight.w500,
          color: textSolidColor,
        ),
        bodyMedium: TextStyle(
          fontSize: Dimens.dp14,
          fontWeight: FontWeight.w400,
          color: textDisabledColor,
        ),
        labelMedium: TextStyle(
          fontSize: Dimens.dp12,
          fontWeight: FontWeight.w500,
          color: textDisabledColor,
        ),
      );

  CardTheme get cardTheme => CardTheme(
    elevation: 0,
    margin: EdgeInsets.zero,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Dimens.dp8),
      side: BorderSide(color: borderColor),
    ),
  );

  AppBarTheme get appBarTheme => const AppBarTheme(centerTitle: false);

  ThemeData get theme {
    return ThemeData(
      colorScheme: ColorScheme.light(
        primary: primaryColor,
        secondary: primaryColor,
        error: errorColor,
      ),
      scaffoldBackgroundColor: scaffoldColor,
      useMaterial3: true,
      fontFamily: 'Poppins',
      textTheme: textTheme,
      appBarTheme: appBarTheme,
      cardTheme: cardTheme, 
    );
  }
}
