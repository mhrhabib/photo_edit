import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumOnPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get bodyMediumPrimary => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodySmallInterPrimary => theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallLime600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lime600,
      );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
  static get bodySmall_2 => theme.textTheme.bodySmall!;
  // Headline text style
  static get headlineMediumOnPrimary =>
      theme.textTheme.headlineMedium!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeGray400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeGray40001 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40001,
      );
  static get labelLargeGray40002 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w700,
      );
  static get labelLargeGray40002Medium => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeGray40002_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray40002,
      );
  static get labelLargeGray400_1 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get labelLargeGray500 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.gray500,
      );
  static get labelLargeInter => theme.textTheme.labelLarge!.inter.copyWith(
        fontSize: 12.fSize,
      );
  static get labelLargeInterPrimary =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get labelLargeLime600 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.lime600,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
      );
  static get labelLargeOnPrimaryBold => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get labelLargeOnPrimaryMedium => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelLargePrimary_1 => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumGray40002 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray40002,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80001 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumGray80001_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get labelMediumInterGray40002 =>
      theme.textTheme.labelMedium!.inter.copyWith(
        color: appTheme.gray40002,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumLime600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.lime600,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );
  static get labelMediumPrimarySemiBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumSemiBold => theme.textTheme.labelMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get labelMedium_1 => theme.textTheme.labelMedium!;
  // Title text style
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMedium16_1 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumGray40002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray40002,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get titleMediumGray80001_1 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray80001,
      );
  static get titleMediumInterGray80001 =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: appTheme.gray80001,
        fontSize: 16.fSize,
      );
  static get titleMediumInterPrimary =>
      theme.textTheme.titleMedium!.inter.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
  static get titleMediumMedium => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPrimary => theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 16.fSize,
      );
}

extension on TextStyle {
  TextStyle get openSans {
    return copyWith(
      fontFamily: 'Open Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
