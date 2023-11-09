import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontSize: 17.fSize,
      );
  static get bodyMedium15 => theme.textTheme.bodyMedium!.copyWith(
        fontSize: 15.fSize,
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumGray70002 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70002,
      );
  static get bodyMediumGray70003 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70003,
      );
  static get bodyMediumGray7000313 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray70003,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumIndigo300 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.indigo300,
      );
  static get bodyMediumInterGray70003 =>
      theme.textTheme.bodyMedium!.inter.copyWith(
        color: appTheme.gray70003,
      );
  static get bodyMediumRobotoGray800 =>
      theme.textTheme.bodyMedium!.roboto.copyWith(
        color: appTheme.gray800,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodyMediumWhiteA700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmallBlack90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002,
      );
  static get bodySmallBlack9000210 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002,
        fontSize: 10.fSize,
      );
  static get bodySmallBlack9000210_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black90002,
        fontSize: 10.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 10.fSize,
      );
  static get bodySmallGray70003 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray70003,
        fontSize: 12.fSize,
      );
  static get bodySmallRedA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA700,
        fontSize: 10.fSize,
      );
  static get bodySmallSFProText => theme.textTheme.bodySmall!.sFProText;
  static get bodySmallSFProTextBlack90002 =>
      theme.textTheme.bodySmall!.sFProText.copyWith(
        color: appTheme.black90002,
        fontSize: 10.fSize,
      );
  static get bodySmallTeal300 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.teal300,
        fontSize: 10.fSize,
      );
  // Label text style
  static get labelMediumGray70004 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray70004,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSFProRoundedGray100 =>
      theme.textTheme.labelMedium!.sFProRounded.copyWith(
        color: appTheme.gray100,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontWeight: FontWeight.w400,
      );
  static get titleLargeInterOnErrorContainer =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeMedium => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeMedium22 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 22.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeRegular => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium17 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray90001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90001,
      );
  static get titleMediumGray90002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
      );
  static get titleMediumInter => theme.textTheme.titleMedium!.inter.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumInterGray90002 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumMedium_1 => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 17.fSize,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallGray90002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray90002,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallIndigo300 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.indigo300,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallInterOrange700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.orange700,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallSFProRoundedGray100 =>
      theme.textTheme.titleSmall!.sFProRounded.copyWith(
        color: appTheme.gray100,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get sFProRounded {
    return copyWith(
      fontFamily: 'SF Pro Rounded',
    );
  }
}
