// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

final class ProductColorSchemes {
  ProductColorSchemes._();
  static const ColorScheme lightColorScheme = _lightColorScheme;
  static const ColorScheme darkColorScheme = _darkColorScheme;
}

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF006B5A),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF7AF8DB),
  onPrimaryContainer: Color(0xFF00201A),
  secondary: Color(0xFF4B635C),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFCDE8DF),
  onSecondaryContainer: Color(0xFF06201A),
  tertiary: Color(0xFF426277),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFC7E7FF),
  onTertiaryContainer: Color(0xFF001E2E),
  error: Color(0xFFBA1A1A),
  errorContainer: Color(0xFFFFDAD6),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF410002),
  background: Color(0xFFFAFDFA),
  onBackground: Color(0xFF191C1B),
  surface: Color(0xFFFAFDFA),
  onSurface: Color(0xFF191C1B),
  surfaceVariant: Color(0xFFDBE5E0),
  onSurfaceVariant: Color(0xFF3F4945),
  outline: Color(0xFF6F7975),
  onInverseSurface: Color(0xFFEFF1EF),
  inverseSurface: Color(0xFF2E3130),
  inversePrimary: Color(0xFF5BDBBF),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF006B5A),
  outlineVariant: Color(0xFFBFC9C4),
  scrim: Color(0xFF000000),
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF5BDBBF),
  onPrimary: Color(0xFF00382E),
  primaryContainer: Color(0xFF005143),
  onPrimaryContainer: Color(0xFF7AF8DB),
  secondary: Color(0xFFB1CCC3),
  onSecondary: Color(0xFF1D352F),
  secondaryContainer: Color(0xFF334B45),
  onSecondaryContainer: Color(0xFFCDE8DF),
  tertiary: Color(0xFFAACBE3),
  onTertiary: Color(0xFF103447),
  tertiaryContainer: Color(0xFF2A4A5F),
  onTertiaryContainer: Color(0xFFC7E7FF),
  error: Color(0xFFFFB4AB),
  errorContainer: Color(0xFF93000A),
  onError: Color(0xFF690005),
  onErrorContainer: Color(0xFFFFDAD6),
  background: Color(0xFF191C1B),
  onBackground: Color(0xFFE1E3E0),
  surface: Color(0xFF191C1B),
  onSurface: Color(0xFFE1E3E0),
  surfaceVariant: Color(0xFF3F4945),
  onSurfaceVariant: Color(0xFFBFC9C4),
  outline: Color(0xFF89938F),
  onInverseSurface: Color(0xFF191C1B),
  inverseSurface: Color(0xFFE1E3E0),
  inversePrimary: Color(0xFF006B5A),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF5BDBBF),
  outlineVariant: Color(0xFF3F4945),
  scrim: Color(0xFF000000),
);
