import 'package:flutter/cupertino.dart';
// import 'package:flutter_dev/presentation/colors_manager.dart';

import 'fonts_manager.dart';

// TextStyle _getTextStyle(FontWeight fontweight,)
TextStyle _getTextStyle(FontWeight weight, double fontsize, Color color) {
  return TextStyle(
    fontWeight: weight,
    fontSize: fontsize,
    color: color,
    fontFamily: FontConstants.fontsFamily,

    // backgroundColor: ColorManager.Transparent,
    // letterSpacing: 0.5,
    // wordSpacing: 0,
    // height: 1.5,
    // decorationColor: ColorManager.Transparent,
    // decorationThickness: 0.0,
  ).copyWith(inherit: true);
}

TextStyle getRegularStyle(
    {required Color color, double fontsize = FontSize.s12}) {
  return _getTextStyle(
    FontWeightManager.regular,
    fontsize,
    color,
  );
}

TextStyle getMediumStyle(
    {required Color color, double fontsize = FontSize.s12}) {
  return _getTextStyle(
    FontWeightManager.medium,
    fontsize,
    color,
  );
}

TextStyle getLightStyle(
    {required Color color, double fontsize = FontSize.s12}) {
  return _getTextStyle(
    FontWeightManager.light,
    fontsize,
    color,
  );
}

TextStyle getSemiBoldStyle(
    {required Color color, double fontsize = FontSize.s12}) {
  return _getTextStyle(
    FontWeightManager.semiBold,
    fontsize,
    color,
  );
}

TextStyle getBoldStyle({required Color color, double fontsize = FontSize.s12}) {
  return _getTextStyle(
    FontWeightManager.bold,
    fontsize,
    color,
  );
}
