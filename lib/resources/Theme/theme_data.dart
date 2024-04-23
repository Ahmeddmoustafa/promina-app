import 'package:flutter/material.dart';
import 'package:promina_app/resources/Managers/colors_manager.dart';
import 'package:promina_app/resources/Managers/fonts_manager.dart';
import 'package:promina_app/resources/Managers/styles_manager.dart';
import 'package:promina_app/resources/Managers/values_manager.dart';

ThemeData getApplicationtheme(bool dark) {
  return ThemeData(
    // ******************* Main Colors **********************
    primaryColor: ColorManager.Black,
    primaryColorLight: ColorManager.LightGrey,
    primaryColorDark: ColorManager.Black,
    splashColor: ColorManager.LightGrey,

    // ******************** CardView theme ********************
    cardTheme: CardTheme(
      color: ColorManager.White,
      shadowColor: ColorManager.LightGrey,
      elevation: AppSize.s8,
    ),

    // ******************** Appbar theme ********************

    appBarTheme: AppBarTheme(
      color: ColorManager.Black,
      shadowColor: ColorManager.LightGrey,
      centerTitle: true,
      elevation: 0,
      titleTextStyle: getBoldStyle(
        fontsize: FontSize.s26,
        color: ColorManager.Pink,
      ),
    ),
    // ******************** Text theme ********************

    textTheme: TextTheme(
      displayLarge: getSemiBoldStyle(
        color: ColorManager.DarkGrey,
        fontsize: FontSize.s40,
      ),
      bodyLarge: getSemiBoldStyle(
        color: ColorManager.White,
        fontsize: FontSize.s16,
      ),
      displaySmall: getSemiBoldStyle(
        color: ColorManager.DarkGrey,
        fontsize: FontSize.s26,
      ),
      bodyMedium: getRegularStyle(
        color: ColorManager.Black,
        fontsize: FontSize.s14,
      ),
      bodySmall: getMediumStyle(
        color: ColorManager.Black,
        fontsize: FontSize.s12,
      ),
      displayMedium: getSemiBoldStyle(
        color: ColorManager.White,
        fontsize: FontSize.s16,
      ),
    ),

    // ******************** button theme ********************
    // buttonTheme: ButtonThemeData(
    //   minWidth: 500,
    //   height: 100.0,
    //   shape: const StadiumBorder(),
    //   disabledColor: ColorManager.DarkGrey,
    //   buttonColor: ColorManager.PrimaryColor,
    //   focusColor: ColorManager.DarkGrey,
    //   splashColor: ColorManager.PrimaryColor,
    // ),

    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ElevatedButton.styleFrom(
    //     textStyle: getRegularStyle(
    //       color: ColorManager.White,
    //       fontsize: FontSize.s18,
    //     ),
    //     backgroundColor: ColorManager.Black,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(AppSize.s12),
    //     ),
    //   ),
    // ),

    // ******************** Input theme ********************

    // inputDecorationTheme: InputDecorationTheme(
    //   suffixIconColor: ColorManager.Black,
    //   disabledBorder: const OutlineInputBorder(
    //     borderSide: BorderSide.none,
    //   ),
    //   contentPadding: const EdgeInsets.all(AppPadding.p8),
    //   hintStyle: getRegularStyle(
    //     color: ColorManager.Black,
    //     fontsize: FontSize.s14,
    //   ),
    //   errorStyle: getRegularStyle(
    //     color: ColorManager.error,
    //     fontsize: FontSize.s14,
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.LightGrey,
    //       width: AppSize.s1_5,
    //     ),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s14),
    //     ),
    //   ),
    //   focusedBorder: OutlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.LightGrey,
    //       width: AppSize.s1_5,
    //     ),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s14),
    //     ),
    //   ),
    //   // ******************* ERROR border color ********************
    //   errorBorder: OutlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.error,
    //       width: AppSize.s1_5,
    //     ),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s8),
    //     ),
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderSide: BorderSide(
    //       color: ColorManager.error,
    //       width: AppSize.s1_5,
    //     ),
    //     borderRadius: const BorderRadius.all(
    //       Radius.circular(AppSize.s8),
    //     ),
    //   ),
    //   /************************************************************ */
    // ),
  );
}
