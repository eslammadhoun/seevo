import 'package:flutter/material.dart';
import 'package:seevo/core/theme/seevo_palette.dart';

/// Semantic colour tokens, mirroring the Figma "Color" collection
/// (modes: Light / Dark).
///
/// Read them in widgets with `context.colors.textPrimary`, etc.
///
@immutable
class SeevoColors extends ThemeExtension<SeevoColors> {
  const SeevoColors({
    required this.bgCanvas,
    required this.bgSurface,
    required this.bgSurfaceRaised,
    required this.bgSurfaceSunken,
    required this.bgBrand,
    required this.bgBrandPressed,
    required this.bgBrandSubtle,
    required this.bgAccent,
    required this.bgInverse,
    required this.bgSuccessSubtle,
    required this.bgDangerSubtle,
    required this.bgSplash,
    required this.textPrimary,
    required this.textSecondary,
    required this.textTertiary,
    required this.textOnBrand,
    required this.textBrand,
    required this.textInverse,
    required this.textOnCamera,
    required this.textDanger,
    required this.textSuccess,
    required this.textOnSplash,
    required this.borderDefault,
    required this.borderStrong,
    required this.borderFocus,
    required this.detectBox,
    required this.detectBoxAlt,
    required this.detectLabelText,
    required this.statusSuccess,
    required this.statusWarning,
    required this.statusDanger,
    required this.iconPrimary,
    required this.iconSecondary,
    required this.iconBrand,
    required this.iconOnBrand,
    required this.overlayCameraScrim,
    required this.overlayModalScrim,
    required this.overlayGlass,
  });

  final Color bgCanvas;
  final Color bgSurface;
  final Color bgSurfaceRaised;
  final Color bgSurfaceSunken;
  final Color bgBrand;
  final Color bgBrandPressed;
  final Color bgBrandSubtle;
  final Color bgAccent;
  final Color bgInverse;
  final Color bgSuccessSubtle;
  final Color bgDangerSubtle;
  final Color bgSplash;
  final Color textPrimary;
  final Color textSecondary;
  final Color textTertiary;
  final Color textOnBrand;
  final Color textBrand;
  final Color textInverse;
  final Color textOnCamera;
  final Color textDanger;
  final Color textSuccess;
  final Color textOnSplash;
  final Color borderDefault;
  final Color borderStrong;
  final Color borderFocus;
  final Color detectBox;
  final Color detectBoxAlt;
  final Color detectLabelText;
  final Color statusSuccess;
  final Color statusWarning;
  final Color statusDanger;
  final Color iconPrimary;
  final Color iconSecondary;
  final Color iconBrand;
  final Color iconOnBrand;
  final Color overlayCameraScrim;
  final Color overlayModalScrim;
  final Color overlayGlass;

  static const light = SeevoColors(
    bgCanvas: SeevoPalette.navy25,
    bgSurface: SeevoPalette.navy0,
    bgSurfaceRaised: SeevoPalette.navy0,
    bgSurfaceSunken: SeevoPalette.navy50,
    bgBrand: SeevoPalette.teal700,
    bgBrandPressed: SeevoPalette.teal800,
    bgBrandSubtle: SeevoPalette.teal50,
    bgAccent: SeevoPalette.amber500,
    bgInverse: SeevoPalette.navyInk,
    bgSuccessSubtle: SeevoPalette.teal50,
    bgDangerSubtle: SeevoPalette.red50,
    bgSplash: SeevoPalette.teal700,
    textPrimary: SeevoPalette.navyInk,
    textSecondary: SeevoPalette.navy600,
    textTertiary: SeevoPalette.navy500,
    textOnBrand: SeevoPalette.navy0,
    textBrand: SeevoPalette.teal700,
    textInverse: SeevoPalette.navy0,
    textOnCamera: SeevoPalette.navy0,
    textDanger: SeevoPalette.red700,
    textSuccess: SeevoPalette.green700,
    textOnSplash: SeevoPalette.navy0,
    borderDefault: SeevoPalette.navy100,
    borderStrong: SeevoPalette.navy200,
    borderFocus: SeevoPalette.teal600,
    detectBox: SeevoPalette.amber400,
    detectBoxAlt: SeevoPalette.teal300,
    detectLabelText: SeevoPalette.navyInk,
    statusSuccess: SeevoPalette.green600,
    statusWarning: SeevoPalette.amber600,
    statusDanger: SeevoPalette.red600,
    iconPrimary: SeevoPalette.navyInk,
    iconSecondary: SeevoPalette.navy500,
    iconBrand: SeevoPalette.teal600,
    iconOnBrand: SeevoPalette.navy0,
    overlayCameraScrim: Color(0x73000000),
    overlayModalScrim: Color(0x99061716),
    overlayGlass: Color(0x99061716),
  );

  static const dark = SeevoColors(
    bgCanvas: SeevoPalette.pine950,
    bgSurface: SeevoPalette.pine900,
    bgSurfaceRaised: SeevoPalette.pine850,
    bgSurfaceSunken: SeevoPalette.pine950,
    bgBrand: SeevoPalette.teal400,
    bgBrandPressed: SeevoPalette.teal300,
    bgBrandSubtle: SeevoPalette.teal900,
    bgAccent: SeevoPalette.amber400,
    bgInverse: SeevoPalette.pine100,
    bgSuccessSubtle: SeevoPalette.teal900,
    bgDangerSubtle: SeevoPalette.red950,
    bgSplash: SeevoPalette.teal950,
    textPrimary: SeevoPalette.pine100,
    textSecondary: SeevoPalette.pine300,
    textTertiary: SeevoPalette.pine400,
    textOnBrand: SeevoPalette.teal950,
    textBrand: SeevoPalette.teal300,
    textInverse: SeevoPalette.pine900,
    textOnCamera: SeevoPalette.navy0,
    textDanger: SeevoPalette.red400,
    textSuccess: SeevoPalette.green400,
    textOnSplash: SeevoPalette.navy0,
    borderDefault: SeevoPalette.pine800,
    borderStrong: SeevoPalette.pine700,
    borderFocus: SeevoPalette.teal300,
    detectBox: SeevoPalette.amber400,
    detectBoxAlt: SeevoPalette.teal300,
    detectLabelText: SeevoPalette.navyInk,
    statusSuccess: SeevoPalette.green400,
    statusWarning: SeevoPalette.amber400,
    statusDanger: SeevoPalette.red400,
    iconPrimary: SeevoPalette.pine100,
    iconSecondary: SeevoPalette.pine400,
    iconBrand: SeevoPalette.teal300,
    iconOnBrand: SeevoPalette.teal950,
    overlayCameraScrim: Color(0x73000000),
    overlayModalScrim: Color(0xB2061716),
    overlayGlass: Color(0x99061716),
  );

  // Tokens are fixed presets per mode, so there is nothing to copy.
  @override
  SeevoColors copyWith() => this;

  @override
  SeevoColors lerp(SeevoColors? other, double t) {
    if (other == null) return this;
    Color l(Color a, Color b) => Color.lerp(a, b, t)!;
    return SeevoColors(
      bgCanvas: l(bgCanvas, other.bgCanvas),
      bgSurface: l(bgSurface, other.bgSurface),
      bgSurfaceRaised: l(bgSurfaceRaised, other.bgSurfaceRaised),
      bgSurfaceSunken: l(bgSurfaceSunken, other.bgSurfaceSunken),
      bgBrand: l(bgBrand, other.bgBrand),
      bgBrandPressed: l(bgBrandPressed, other.bgBrandPressed),
      bgBrandSubtle: l(bgBrandSubtle, other.bgBrandSubtle),
      bgAccent: l(bgAccent, other.bgAccent),
      bgInverse: l(bgInverse, other.bgInverse),
      bgSuccessSubtle: l(bgSuccessSubtle, other.bgSuccessSubtle),
      bgDangerSubtle: l(bgDangerSubtle, other.bgDangerSubtle),
      bgSplash: l(bgSplash, other.bgSplash),
      textPrimary: l(textPrimary, other.textPrimary),
      textSecondary: l(textSecondary, other.textSecondary),
      textTertiary: l(textTertiary, other.textTertiary),
      textOnBrand: l(textOnBrand, other.textOnBrand),
      textBrand: l(textBrand, other.textBrand),
      textInverse: l(textInverse, other.textInverse),
      textOnCamera: l(textOnCamera, other.textOnCamera),
      textDanger: l(textDanger, other.textDanger),
      textSuccess: l(textSuccess, other.textSuccess),
      textOnSplash: l(textOnSplash, other.textOnSplash),
      borderDefault: l(borderDefault, other.borderDefault),
      borderStrong: l(borderStrong, other.borderStrong),
      borderFocus: l(borderFocus, other.borderFocus),
      detectBox: l(detectBox, other.detectBox),
      detectBoxAlt: l(detectBoxAlt, other.detectBoxAlt),
      detectLabelText: l(detectLabelText, other.detectLabelText),
      statusSuccess: l(statusSuccess, other.statusSuccess),
      statusWarning: l(statusWarning, other.statusWarning),
      statusDanger: l(statusDanger, other.statusDanger),
      iconPrimary: l(iconPrimary, other.iconPrimary),
      iconSecondary: l(iconSecondary, other.iconSecondary),
      iconBrand: l(iconBrand, other.iconBrand),
      iconOnBrand: l(iconOnBrand, other.iconOnBrand),
      overlayCameraScrim: l(overlayCameraScrim, other.overlayCameraScrim),
      overlayModalScrim: l(overlayModalScrim, other.overlayModalScrim),
      overlayGlass: l(overlayGlass, other.overlayGlass),
    );
  }
}
