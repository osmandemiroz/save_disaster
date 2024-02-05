// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';

final class ProductColorSchemes {
  ProductColorSchemes._();
  static const ColorScheme lightColorScheme = _lightColorScheme;
  static const ColorScheme darkColorScheme = _darkColorScheme;
}

const _lightColorScheme = ColorScheme(
  brightness: Brightness.light,
  primary: Color(0xFF00A896),
  onPrimary: Color(0xFFFFFFFF),
  primaryContainer: Color(0xFF6FFFE9),
  onPrimaryContainer: Color(0xFF00201A),
  secondary: Color(0xFF4CAF50),
  onSecondary: Color(0xFFFFFFFF),
  secondaryContainer: Color(0xFFC8E6C9),
  onSecondaryContainer: Color(0xFF06201A),
  tertiary: Color(0xFF607D8B),
  onTertiary: Color(0xFFFFFFFF),
  tertiaryContainer: Color(0xFFCFD8DC),
  onTertiaryContainer: Color(0xFF001E2E),
  error: Color(0xFFD32F2F),
  errorContainer: Color(0xFFFFCDD2),
  onError: Color(0xFFFFFFFF),
  onErrorContainer: Color(0xFF470000),
  background: Color(0xFFF5F5F5),
  onBackground: Color(0xFF424242),
  surface: Color(0xFFFFFFFF),
  onSurface: Color(0xFF424242),
  surfaceVariant: Color(0xFFE0E0E0),
  onSurfaceVariant: Color(0xFF455A64),
  outline: Color(0xFF9E9E9E),
  onInverseSurface: Color(0xFFECEFF1),
  inverseSurface: Color(0xFF263238),
  inversePrimary: Color(0xFF00A896),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF00A896),
  outlineVariant: Color(0xFFB0BEC5),
  scrim: Color(0xFF000000),
);

const _darkColorScheme = ColorScheme(
  brightness: Brightness.dark,
  primary: Color(0xFF00A896),
  onPrimary: Color(0xFF00382E),
  primaryContainer: Color(0xFF005743),
  onPrimaryContainer: Color(0xFF6FFFE9),
  secondary: Color(0xFF8BC34A),
  onSecondary: Color(0xFF1B5E20),
  secondaryContainer: Color(0xFF33691E),
  onSecondaryContainer: Color(0xFFC8E6C9),
  tertiary: Color(0xFF81D4FA),
  onTertiary: Color(0xFF0A4E6C),
  tertiaryContainer: Color(0xFF1C9ED9),
  onTertiaryContainer: Color(0xFFCFD8DC),
  error: Color(0xFFFF7043),
  errorContainer: Color(0xFFBF360C),
  onError: Color(0xFFBF360C),
  onErrorContainer: Color(0xFFFFCDD2),
  background: Color(0xFF212121),
  onBackground: Color(0xFFE0E0E0),
  surface: Color(0xFF424242),
  onSurface: Color(0xFFE0E0E0),
  surfaceVariant: Color(0xFF757575),
  onSurfaceVariant: Color(0xFFB0BEC5),
  outline: Color(0xFF9E9E9E),
  onInverseSurface: Color(0xFF212121),
  inverseSurface: Color(0xFFE0E0E0),
  inversePrimary: Color(0xFF00A896),
  shadow: Color(0xFF000000),
  surfaceTint: Color(0xFF00A896),
  outlineVariant: Color(0xFF757575),
  scrim: Color(0xFF000000),
);
