import 'package:flutter/painting.dart';

/// Primitive colours, mirroring the Figma "Primitives" collection.
///
/// Widgets must not use these directly. Use the semantic tokens in
/// `SeevoColors` (via `context.colors`) so light and dark modes keep
/// working.
abstract final class SeevoPalette {
  // Teal: brand.
  static const teal50 = Color(0xFFF0FDFA);
  static const teal100 = Color(0xFFCCFBF1);
  static const teal200 = Color(0xFF99F6E4);
  static const teal300 = Color(0xFF5EEAD4);
  static const teal400 = Color(0xFF2DD4BF);
  static const teal500 = Color(0xFF14B8A6);
  static const teal600 = Color(0xFF0D9488);
  static const teal700 = Color(0xFF0F766E);
  static const teal800 = Color(0xFF115E59);
  static const teal900 = Color(0xFF134E4A);
  static const teal950 = Color(0xFF042F2E);

  // Navy: light-mode neutrals.
  static const navy0 = Color(0xFFFFFFFF);
  static const navy25 = Color(0xFFF7FAFA);
  static const navy50 = Color(0xFFEFF4F6);
  static const navy100 = Color(0xFFE8EEF3);
  static const navy200 = Color(0xFFCBD5DF);
  static const navy500 = Color(0xFF64748B);
  static const navy600 = Color(0xFF475569);
  static const navyInk = Color(0xFF0F172A);

  // Pine: dark-mode neutrals.
  static const pine100 = Color(0xFFE6F2F0);
  static const pine300 = Color(0xFFA8C4C0);
  static const pine400 = Color(0xFF7FA19C);
  static const pine700 = Color(0xFF264F4B);
  static const pine800 = Color(0xFF1A3D3A);
  static const pine850 = Color(0xFF12302D);
  static const pine900 = Color(0xFF0C2321);
  static const pine950 = Color(0xFF061716);

  static const black = Color(0xFF000000);

  // Amber: accent and detection boxes.
  static const amber50 = Color(0xFFFFFBEB);
  static const amber300 = Color(0xFFFCD34D);
  static const amber400 = Color(0xFFFBBF24);
  static const amber500 = Color(0xFFF59E0B);
  static const amber600 = Color(0xFFD97706);

  // Status.
  static const green400 = Color(0xFF4ADE80);
  static const green600 = Color(0xFF16A34A);
  static const green700 = Color(0xFF15803D);
  static const red50 = Color(0xFFFEF2F2);
  static const red400 = Color(0xFFF87171);
  static const red600 = Color(0xFFDC2626);
  static const red700 = Color(0xFFB91C1C);
  static const red950 = Color(0xFF2A1215);
}
