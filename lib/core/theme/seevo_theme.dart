import 'package:flutter/material.dart';

import 'seevo_colors.dart';
import 'seevo_dimens.dart';
import 'seevo_typography.dart';

/// Builds Seevo's [ThemeData] for each mode from the semantic tokens.
abstract final class SeevoTheme {
  static final light = _build(SeevoColors.light, Brightness.light);
  static final dark = _build(SeevoColors.dark, Brightness.dark);

  static ThemeData _build(SeevoColors c, Brightness brightness) {
    final scheme = ColorScheme(
      brightness: brightness,
      primary: c.bgBrand,
      onPrimary: c.textOnBrand,
      primaryContainer: c.bgBrandSubtle,
      onPrimaryContainer: c.textBrand,
      secondary: c.bgAccent,
      onSecondary: c.detectLabelText,
      error: c.statusDanger,
      onError: c.textOnBrand,
      surface: c.bgSurface,
      onSurface: c.textPrimary,
      onSurfaceVariant: c.textSecondary,
      surfaceContainerLowest: c.bgSurfaceSunken,
      surfaceContainerLow: c.bgSurface,
      surfaceContainer: c.bgSurface,
      surfaceContainerHigh: c.bgSurfaceRaised,
      surfaceContainerHighest: c.bgSurfaceRaised,
      outline: c.borderStrong,
      outlineVariant: c.borderDefault,
      inverseSurface: c.bgInverse,
      onInverseSurface: c.textInverse,
    );

    final buttonShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(SeevoRadius.lg),
    );
    const buttonSize = Size(SeevoSizes.touchMin, SeevoSizes.buttonHeight);
    const buttonPadding = EdgeInsets.symmetric(horizontal: SeevoSpacing.xl);

    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: scheme,
      scaffoldBackgroundColor: c.bgCanvas,
      fontFamily: SeevoTypography.fontFamily,
      textTheme: SeevoTypography.textTheme(
        primary: c.textPrimary,
        secondary: c.textSecondary,
      ),
      extensions: [c],
      // Primary button (Figma: Button / Style=Primary).
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          backgroundColor: c.bgBrand,
          foregroundColor: c.textOnBrand,
          minimumSize: buttonSize,
          padding: buttonPadding,
          shape: buttonShape,
          textStyle: SeevoTypography.labelMedium,
        ),
      ),
      // Secondary button (Figma: Button / Style=Secondary).
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: c.bgBrandSubtle,
          foregroundColor: c.textBrand,
          minimumSize: buttonSize,
          padding: buttonPadding,
          shape: buttonShape,
          side: BorderSide(color: c.borderFocus, width: 1.5),
          textStyle: SeevoTypography.labelMedium,
        ),
      ),
      // Ghost button (Figma: Button / Style=Ghost).
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: c.textBrand,
          minimumSize: buttonSize,
          padding: buttonPadding,
          shape: buttonShape,
          textStyle: SeevoTypography.labelMedium,
        ),
      ),
      iconTheme: IconThemeData(color: c.iconPrimary, size: SeevoSizes.icon),
      appBarTheme: AppBarTheme(
        backgroundColor: c.bgCanvas,
        foregroundColor: c.textPrimary,
        elevation: 0,
        scrolledUnderElevation: 0,
        centerTitle: true,
        titleTextStyle: SeevoTypography.titleSmall.copyWith(
          color: c.textPrimary,
        ),
      ),
      switchTheme: SwitchThemeData(
        thumbColor: const WidgetStatePropertyAll(Colors.white),
        trackColor: WidgetStateProperty.resolveWith(
          (states) => states.contains(WidgetState.selected)
              ? c.bgBrand
              : c.borderStrong,
        ),
        trackOutlineColor: const WidgetStatePropertyAll(Colors.transparent),
      ),
      sliderTheme: SliderThemeData(
        activeTrackColor: c.bgBrand,
        inactiveTrackColor: c.borderStrong,
        thumbColor: c.bgBrand,
        overlayColor: c.bgBrand.withValues(alpha: 0.12),
      ),
      listTileTheme: ListTileThemeData(
        iconColor: c.iconBrand,
        textColor: c.textPrimary,
        minVerticalPadding: SeevoSpacing.md,
      ),
      dividerTheme: DividerThemeData(
        color: c.borderDefault,
        thickness: 1,
        space: 1,
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: c.bgSurface,
        showDragHandle: true,
        dragHandleColor: c.borderStrong,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(SeevoRadius.sheet),
          ),
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: c.bgInverse,
        contentTextStyle: SeevoTypography.bodyMedium.copyWith(
          color: c.textInverse,
        ),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}

/// Short access to Seevo tokens: `context.colors.textPrimary`.
extension SeevoThemeContext on BuildContext {
  SeevoColors get colors => Theme.of(this).extension<SeevoColors>()!;
  TextTheme get textStyles => Theme.of(this).textTheme;
}
