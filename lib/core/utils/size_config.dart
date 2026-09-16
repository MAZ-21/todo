import 'package:flutter/material.dart';

class SizeConfig {
  static const double figmaWidth = 390;
  static const double figmaHeight = 844;

  static double responsiveWidth(BuildContext context, double designWidth) {
    return designWidth * MediaQuery.sizeOf(context).width / figmaWidth;
  }

  static double responsiveHeight(BuildContext context, double designHeight) {
    return designHeight * MediaQuery.sizeOf(context).height / figmaHeight;
  }

  static double responsiveText(BuildContext context, double designFontSize) {
    final screenWidth = MediaQuery.sizeOf(context).width;

    // Normalize scale against Figma base width
    double scaleFactor = _getScaleFactor(screenWidth);
    double responsiveFontSize = designFontSize * scaleFactor;
    double lowerLimit = designFontSize * 0.75;
    double upperLimit = designFontSize * 1.4;
    return responsiveFontSize.clamp(lowerLimit, upperLimit);
  }

   static double _getScaleFactor(double width) {
    if (width < 360) {
      return width / 360;
    } else if (width < 600) {
      return width / figmaWidth;    
    } else if (width < 900) {
      return width / 720;           
    } else {
      return width / 1024;
    }
  }
}
