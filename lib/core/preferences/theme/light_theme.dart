import 'package:flutter/material.dart';
import 'package:kasirsuper/core/core.dart';

class LightTime {
  LightTime(this.primaryColor);
  final Color primaryColor;

  final Color errorColor = AppColors.red;
  final Color scaffoldColor = AppColors.white;
  final Color textDisabledColor = AppColors.black[400]!;
  final Color textSolidColor = AppColors.black;
  final Color borderColor = AppColors.white[500]!;
  final Color inputColor = AppColors.white[400]!;

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


  AppBarTheme get appBarTheme => AppBarTheme(
    centerTitle: false,
    surfaceTintColor: scaffoldColor
  );
  
  BottomNavigationBarThemeData get bottomNavigationBarTheme {
    return BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: primaryColor,
        unselectedItemColor: textDisabledColor,
        selectedLabelStyle: textTheme.labelMedium?.copyWith(
          fontSize: Dimens.dp10,
          color: primaryColor,
        ),
        unselectedLabelStyle: textTheme.labelMedium?.copyWith(
          fontSize: Dimens.dp10,
          color: textDisabledColor,
        ),
      );
  }

  ElevatedButtonThemeData get elevatedButtonTheme {
    return ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: scaffoldColor,
          textStyle: textTheme.titleMedium,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
          ),
        ),
      );
  }

  OutlinedButtonThemeData get outlinedButtonTheme {
    return OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryColor,
          textStyle: textTheme.titleMedium,
          side: BorderSide(color: primaryColor),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Dimens.dp8),
          ),
        ),
    );
  }

  InputDecorationTheme get inputDecorationTheme {
    return InputDecorationTheme(
        fillColor: inputColor,
        filled: true,
        hintStyle: textTheme.labelMedium,
        prefixIconColor: textDisabledColor,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          borderSide: BorderSide(color: inputColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          borderSide: BorderSide(color: inputColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          borderSide: BorderSide(
            color: primaryColor,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          borderSide: BorderSide(
            color: errorColor,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Dimens.dp8),
          borderSide: BorderSide(
            color: errorColor,
          ),
        ),
      );
  }

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
      bottomNavigationBarTheme: bottomNavigationBarTheme,
      elevatedButtonTheme: elevatedButtonTheme,
      outlinedButtonTheme: outlinedButtonTheme,
      inputDecorationTheme: inputDecorationTheme,
    );
  }
}
