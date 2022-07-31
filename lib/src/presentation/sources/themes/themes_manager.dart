import 'package:flutter/material.dart';

import '../colors/color_manager.dart';

import '../fonts/fonts_manager.dart';
import '../styles/style_manager.dart';
import '../values/value_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    // main colors
    primaryColor: ColorManager.primary,
    //primaryColorLight: ColorManager.primary,
    //primaryColorDark: ColorManager.primary,
    disabledColor: ColorManager.gray,
    splashColor: ColorManager.gray,
    // ripple effect color
    // cardview theme
    cardTheme: CardTheme(
      color: ColorManager.primary,
      shadowColor: ColorManager.primary,
      elevation: AppSize.s12,
    ),
    // app bar theme
    appBarTheme: AppBarTheme(
      centerTitle: true,
      color: ColorManager.primary,
      elevation: AppSize.s12,
      shadowColor: ColorManager.gray,
      titleTextStyle:
          getRegularStyle(fontSize: FontSize.s16, color: ColorManager.primary),
    ),
    // button theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: ColorManager.gray,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.gray,
    ),

    // elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        textStyle: getRegularStyle(
            color: ColorManager.primary, fontSize: FontSize.s18),
        primary: ColorManager.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSize.s12),
        ),
      ),
    ),

    // FAB theme

    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: ColorManager.primary,
    ),

    // text theme
    textTheme: TextTheme(
      displayLarge:
          getLightStyle(color: ColorManager.black, fontSize: FontSize.s22),
      displayMedium:
          getSemiBoldStyle(color: ColorManager.gray, fontSize: FontSize.s16),
      displaySmall:
          getMediumStyle(color: ColorManager.white, fontSize: FontSize.s14),
      headlineLarge:
          getRegularStyle(color: ColorManager.white, fontSize: FontSize.s12),
      headlineMedium:
          getRegularStyle(color: ColorManager.gray, fontSize: FontSize.s16),
      headlineSmall:
          getBoldtStyle(color: ColorManager.white, fontSize: FontSize.s16),
      titleLarge:
          getBoldtStyle(color: ColorManager.black, fontSize: FontSize.s18),
      titleMedium:
          getSemiBoldStyle(color: ColorManager.black, fontSize: FontSize.s24),
    ),

    // input decoration theme (text form field)
    inputDecorationTheme: InputDecorationTheme(
      // content padding
      contentPadding: const EdgeInsets.all(AppPadding.p8),
      // hint style
      hintStyle:
          getRegularStyle(color: ColorManager.doveGray, fontSize: FontSize.s14),
      labelStyle:
          getRegularStyle(color: ColorManager.doveGray, fontSize: FontSize.s12),
      errorStyle: getRegularStyle(color: ColorManager.error),

      // enabled border style
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s1),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s12),
        ),
      ),

      // focused border style
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.primary, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s12),
        ),
      ),

      // error border style
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s12),
        ),
      ),
      // focused border style
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorManager.error, width: AppSize.s2),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppSize.s12),
        ),
      ),
    ),
    // label style
  );
}
