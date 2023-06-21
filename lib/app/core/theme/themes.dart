import 'package:flutter/material.dart';
import 'package:screen_recorder_device/app/core/values/app_color.dart';

ThemeData darkTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.backColor,
  // elevatedButtonTheme: ElevatedButtonThemeData(
  //   style: ButtonStyle(
  //     shape: MaterialStateProperty.all(CircleBorder()),
  //     padding: MaterialStateProperty.all(EdgeInsets.all(20)),
  //     backgroundColor:
  //         MaterialStateProperty.all(Colors.blue), // <-- Button color
  //     overlayColor: MaterialStateProperty.resolveWith<Color?>((states) {
  //       if (states.contains(MaterialState.pressed))
  //         return Colors.redAccent; // <-- Splash color
  //     }),
  //   ),
  // ),
  primaryColor: AppColor.primaryColor,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.bold,
      color: AppColor.primaryColor,
    ),
  ),
);

ThemeData lightTheme = ThemeData(
  scaffoldBackgroundColor: AppColor.primaryColor,
  primaryColor: AppColor.backColor,
);
