import 'package:flutter/material.dart';
import 'package:devhack/core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get background => BoxDecoration(
        color: appTheme.lightBlue5001,
      );

  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo300,
      );
  static BoxDecoration get fillLightBlue => BoxDecoration(
        color: appTheme.lightBlue50,
      );
  static BoxDecoration get fillLightBlueC => BoxDecoration(
        color: appTheme.lightBlue508c,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientTealToIndigo => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0, 0.5),
          end: Alignment(1, 0.5),
          colors: [
            appTheme.teal300,
            appTheme.indigo200,
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: appTheme.black90002.withOpacity(0.2),
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack90002 => BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900021 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black90002,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBlack900022 => BoxDecoration();
  static BoxDecoration get outlineBlack900023 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.black90002,
          width: 1.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.03),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              10,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900024 => BoxDecoration();
  static BoxDecoration get outlineBlueGray => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray50,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineBluegray400 => BoxDecoration(
        color: appTheme.whiteA700,
        border: Border.all(
          color: appTheme.blueGray400,
          width: 2.h,
        ),
        boxShadow: [
          BoxShadow(
            color: appTheme.black90002.withOpacity(0.25),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineDeepOrangeA => BoxDecoration(
        border: Border.all(
          color: appTheme.deepOrangeA400,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray20001,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineGray700 => BoxDecoration(
        color: appTheme.whiteA7005b,
        border: Border.all(
          color: appTheme.gray700,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlineOnPrimary => BoxDecoration();
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder26 => BorderRadius.circular(
        26.h,
      );
  static BorderRadius get circleBorder50 => BorderRadius.circular(
        50.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL25 => BorderRadius.vertical(
        top: Radius.circular(25.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder12 => BorderRadius.circular(
        12.h,
      );
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
        16.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
        3.h,
      );
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder43 => BorderRadius.circular(
        43.h,
      );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
        8.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
