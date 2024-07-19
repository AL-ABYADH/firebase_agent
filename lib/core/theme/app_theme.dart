import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTheme {
  // Radius
  static double largeRadius = 24.r;
  static double mediumRadius = 12.r;
  static double smallRadius = 6.r;
  static double fullRadius = 50.r;

  // Elevation
  static double menuElevation = 2.5;

  // Screen padding
  static EdgeInsets screenPadding = EdgeInsets.symmetric(horizontal: 15.w);

  // Colors
  static Color primaryColor = const Color.fromRGBO(118, 137, 242, 1);
  static Color successColor = const Color.fromARGB(255, 134, 194, 86);
  static Color errorColor = const Color.fromARGB(255, 186, 60, 60);
  static Color warningColor = const Color.fromRGBO(255, 187, 51, 1);
  static Color lightBackgroundColor1 = const Color.fromRGBO(240, 244, 255, 1);
  static Color lightBackgroundColor2 = const Color.fromARGB(255, 227, 233, 250);
  static Color darkBackgroundColor1 = const Color.fromRGBO(28, 38, 50, 1);
  static Color darkBackgroundColor2 = const Color.fromRGBO(41, 50, 65, 1);
  static Color lightForegroundColor = const Color.fromRGBO(28, 38, 50, 1);
  static Color darkForegroundColor = const Color.fromRGBO(240, 244, 255, 1);

  static var primarySwatch = MaterialColor(
    primaryColor.value,
    const {
      100: Color.fromRGBO(14, 27, 80, 1),
      200: Color.fromRGBO(30, 47, 119, 1),
      300: Color.fromRGBO(48, 69, 158, 1),
      400: Color.fromRGBO(83, 103, 200, 1),
      500: Color.fromRGBO(118, 137, 242, 1),
      600: Color.fromRGBO(153, 167, 255, 1),
      700: Color.fromRGBO(187, 196, 255, 1),
      800: Color.fromRGBO(208, 216, 255, 1),
      900: Color.fromRGBO(229, 236, 255, 1),
    },
  );

  // Text
  static final AppTextStyles textStyles = AppTextStyles();
  static const String fontFamily = 'Poppins';

  // Text selection
  static const textSelectionTheme = TextSelectionThemeData(
    cursorColor: Color.fromRGBO(118, 137, 242, 1),
    selectionColor: Color.fromRGBO(118, 137, 242, 0.3),
    selectionHandleColor: Color.fromRGBO(118, 137, 242, 1),
  );

  // Tooltip
  static final tooltipTheme = TooltipThemeData(
    textStyle: textStyles.titleSmall,
    waitDuration: const Duration(milliseconds: 300),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(
        Radius.circular(
          fullRadius,
        ),
      ),
    ),
  );

  // Text button
  static final textButtonTheme = ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateColor.resolveWith(
        (states) => const Color.fromRGBO(118, 137, 242, 1),
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppTheme.fullRadius),
        ),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontFamily: 'Poppins',
          fontSize: 13.sp,
          color: const Color.fromRGBO(118, 137, 242, 1),
        ),
      ),
    ),
  );

  // Primary elevated button
  static final primaryElevatedButtonTheme = TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateColor.resolveWith(
        (states) => const Color.fromRGBO(118, 137, 242, 1),
      ),
      textStyle: MaterialStateProperty.all(
        TextStyle(
          fontFamily: 'Poppins',
          fontSize: 13.sp,
          color: Colors.white,
        ),
      ),
    ),
  );
}

class AppTextStyles {
  TextStyle titleLarge = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 32.sp,
    height: 1.2.h,
    decoration: TextDecoration.none,
  );
  TextStyle titleMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16.sp,
    height: 1.2.h,
    decoration: TextDecoration.none,
  );
  TextStyle titleSmall = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14.sp,
    height: 1.2.h,
    decoration: TextDecoration.none,
  );
  TextStyle buttonText = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 16.sp,
    height: 1.2.h,
    decoration: TextDecoration.none,
  );
  TextStyle displayMedium = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14.sp,
    height: 1.2.h,
    decoration: TextDecoration.none,
  );
  TextStyle displaySmall = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 10.sp,
    height: 1.2.h,
    decoration: TextDecoration.none,
  );
}
