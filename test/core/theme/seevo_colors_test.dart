import 'package:flutter/painting.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:seevo/core/theme/seevo_colors.dart';

/// WCAG 2.1 contrast ratio between two opaque colours.
double contrast(Color a, Color b) {
  final la = a.computeLuminance();
  final lb = b.computeLuminance();
  final hi = la > lb ? la : lb;
  final lo = la > lb ? lb : la;
  return (hi + 0.05) / (lo + 0.05);
}

void main() {
  // NFR-A1: text must reach at least 4.5:1 against its background.
  const modes = {'light': SeevoColors.light, 'dark': SeevoColors.dark};

  for (final MapEntry(key: name, value: c) in modes.entries) {
    group('$name mode text contrast ≥ 4.5:1', () {
      final pairs = <String, (Color, Color)>{
        'textPrimary on bgCanvas': (c.textPrimary, c.bgCanvas),
        'textPrimary on bgSurface': (c.textPrimary, c.bgSurface),
        'textSecondary on bgSurface': (c.textSecondary, c.bgSurface),
        'textTertiary on bgSurface': (c.textTertiary, c.bgSurface),
        'textTertiary on bgSurfaceRaised': (c.textTertiary, c.bgSurfaceRaised),
        'textOnBrand on bgBrand': (c.textOnBrand, c.bgBrand),
        'textBrand on bgSurface': (c.textBrand, c.bgSurface),
        'textBrand on bgBrandSubtle': (c.textBrand, c.bgBrandSubtle),
        'detectLabelText on detectBox': (c.detectLabelText, c.detectBox),
        'detectLabelText on detectBoxAlt': (c.detectLabelText, c.detectBoxAlt),
      };
      for (final MapEntry(key: label, value: (fg, bg)) in pairs.entries) {
        test(label, () {
          expect(contrast(fg, bg), greaterThanOrEqualTo(4.5));
        });
      }
    });
  }
}
