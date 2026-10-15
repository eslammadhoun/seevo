/// Spacing scale (4-pt grid), mirroring Figma `space/*`.
abstract final class SeevoSpacing {
  static const double xxs = 2;
  static const double xs = 4;
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double xxl = 32;
  static const double xxxl = 48;
  static const double huge = 64;
}

/// Corner radii, mirroring Figma `radius/*`.
abstract final class SeevoRadius {
  static const double sm = 8;
  static const double md = 12;
  static const double lg = 16;
  static const double xl = 24;
  static const double sheet = 28;
  static const double full = 999;
}

/// Fixed sizes, mirroring Figma `size/*`.
abstract final class SeevoSizes {
  /// Minimum touch target (WCAG / Material).
  static const double touchMin = 48;

  /// Touch target in Accessibility Mode (FR-4.1).
  static const double touchA11y = 64;
  static const double buttonHeight = 52;
  static const double icon = 24;
  static const double iconLarge = 32;
}
