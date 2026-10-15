import 'package:flutter/material.dart';

/// Text styles, mirroring the Figma text styles (font: Inter, bundled).
///
/// Colours are not set here; they come from the theme so every mode works.

abstract final class SeevoTypography {
  static const fontFamily = 'Inter';

  static TextStyle _style(
    double size,
    double lineHeight,
    FontWeight weight, {
    double letterSpacing = 0,
  }) => TextStyle(
    fontSize: size,
    fontFamily: fontFamily,
    height: lineHeight / size,
    fontWeight: weight,
    letterSpacing: letterSpacing,
  );

  static final display = _style(34, 41, FontWeight.w700, letterSpacing: -0.5);
  static final titleLarge = _style(
    28,
    34,
    FontWeight.w700,
    letterSpacing: -0.3,
  );
  static final titleMedium = _style(
    22,
    28,
    FontWeight.w600,
    letterSpacing: -0.2,
  );
  static final titleSmall = _style(18, 24, FontWeight.w600);
  static final bodyLarge = _style(17, 24, FontWeight.w400);
  static final bodyMedium = _style(15, 22, FontWeight.w400);
  static final bodyStrong = _style(15, 22, FontWeight.w600);
  static final labelLarge = _style(17, 22, FontWeight.w600);
  static final labelMedium = _style(15, 20, FontWeight.w600);
  static final caption = _style(13, 18, FontWeight.w500);
  static final overline = _style(12, 16, FontWeight.w700, letterSpacing: 1);
  static final detectionLabel = _style(14, 18, FontWeight.w700);

  /// Maps the Seevo styles onto Material's [TextTheme] slots so built-in
  /// widgets (AppBar, ListTile, buttons…) pick them up automatically.
  static TextTheme textTheme({
    required Color primary,
    required Color secondary,
  }) => TextTheme(
    displaySmall: display.copyWith(color: primary),
    headlineMedium: titleLarge.copyWith(color: primary),
    titleLarge: titleMedium.copyWith(color: primary),
    titleMedium: titleSmall.copyWith(color: primary),
    titleSmall: bodyStrong.copyWith(color: primary),
    bodyLarge: bodyLarge.copyWith(color: primary),
    bodyMedium: bodyMedium.copyWith(color: primary),
    bodySmall: caption.copyWith(color: secondary),
    labelLarge: labelLarge.copyWith(color: primary),
    labelMedium: labelMedium.copyWith(color: primary),
    labelSmall: overline.copyWith(color: secondary),
  );
}
