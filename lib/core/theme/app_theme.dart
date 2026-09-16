import 'package:flutter/material.dart';

import 'package:todo/core/styles/app_color.dart';
import 'package:todo/core/utils/size_config.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    primaryColor: AppColor.primaryDefaultColor,
    scaffoldBackgroundColor: AppColor.neutralBackgroundColor,
    brightness: Brightness.light,
    fontFamily: 'SF Pro Display',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(6),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(0.50),
          width: 0.4,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(0.50),
          width: 0.4,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.black.withOpacity(0.50),
          width: 0.4,
        ),
      ),
      hintStyle: TextStyle(
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Color(0xff383838),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryDefaultColor,
        textStyle: TextStyle(
          fontSize: 19,
          fontWeight: FontWeight.w700,
          color: Colors.white,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: AppColor.primaryDefaultColor,
    scaffoldBackgroundColor: AppColor.blackColor,
    brightness: Brightness.dark,
    fontFamily: 'SF Pro Display',
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: EdgeInsets.all(30),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.14),
          width: 0.4,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: BorderSide(
          color: Colors.white.withOpacity(0.14),
          width: 0.4,
        ),
      ),
      hintStyle: TextStyle(
        fontFamily: 'SF Pro Display',
        fontWeight: FontWeight.w500,
        fontSize: 16,
        color: Color(0xffA7A7A7),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.primaryDefaultColor,
        
        textStyle: TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    ),
  );
}
