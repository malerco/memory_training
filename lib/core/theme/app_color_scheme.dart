import 'package:flutter/material.dart';

abstract class AppColorScheme {
  Color get white;
  Color get black;

  // Primary colors
  Color get primary;
  Color get primaryLight;
  Color get primaryDark;
  Color get onPrimary;

  // Secondary colors
  Color get secondary;
  Color get secondaryLight;
  Color get secondaryDark;
  Color get onSecondary;

  // Background colors
  Color get background;
  Color get surface;
  Color get surfaceLight;
  Color get surfaceVariant;
  Color get onBackground;
  Color get onSurface;

  // Text colors
  Color get textPrimary;
  Color get textSecondary;
  Color get textHint;
  Color get textDisabled;

  // Status colors
  Color get error;
  Color get success;
  Color get warning;
  Color get info;

  // Game specific colors
  Color get dotColor;
  Color get connectionColor;
  Color get cardBack;
  Color get cardFront;
  Color get redNumber;
  Color get blackNumber;
  Color get highlightedCell;
  Color get defaultCell;

  // Card and shadow
  Color get cardBackground;
  Color get divider;
  Color get shadow;

  // Gradients
  LinearGradient get primaryGradient;
  LinearGradient get secondaryGradient;
  LinearGradient get cardGradient;
  LinearGradient get backgroundGradient;

  Brightness get brightness;
}

class DarkColorScheme implements AppColorScheme {
  const DarkColorScheme();

  @override
  Color get white => const Color(0xFFFFFFFF);
  @override
  Color get black => const Color(0xFF000000);

  // Primary colors
  @override
  Color get primary => const Color(0xFF6C63FF);
  @override
  Color get primaryLight => const Color(0xFF9D97FF);
  @override
  Color get primaryDark => const Color(0xFF4A42D4);
  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  // Secondary colors
  @override
  Color get secondary => const Color(0xFF00D9A5);
  @override
  Color get secondaryLight => const Color(0xFF5FFFCE);
  @override
  Color get secondaryDark => const Color(0xFF00A67E);
  @override
  Color get onSecondary => const Color(0xFF000000);

  // Background colors
  @override
  Color get background => const Color(0xFF1A1A2E);
  @override
  Color get surface => const Color(0xFF252542);
  @override
  Color get surfaceLight => const Color(0xFF3D3D5C);
  @override
  Color get surfaceVariant => const Color(0xFF2A2A4A);
  @override
  Color get onBackground => const Color(0xFFFFFFFF);
  @override
  Color get onSurface => const Color(0xFFFFFFFF);

  // Text colors
  @override
  Color get textPrimary => const Color(0xFFFFFFFF);
  @override
  Color get textSecondary => const Color(0xFFB8B8D0);
  @override
  Color get textHint => const Color(0xFF6E6E8A);
  @override
  Color get textDisabled => const Color(0xFF4A4A5A);

  // Status colors
  @override
  Color get error => const Color(0xFFFF5252);
  @override
  Color get success => const Color(0xFF4CAF50);
  @override
  Color get warning => const Color(0xFFFFB74D);
  @override
  Color get info => const Color(0xFF29B6F6);

  // Game specific colors
  @override
  Color get dotColor => const Color(0xFF3D5AFE);
  @override
  Color get connectionColor => const Color(0xFF3D5AFE);
  @override
  Color get cardBack => const Color(0xFF4A4A6A);
  @override
  Color get cardFront => const Color(0xFFFFFFFF);
  @override
  Color get redNumber => const Color(0xFFFF5252);
  @override
  Color get blackNumber => const Color(0xFF212121);
  @override
  Color get highlightedCell => const Color(0xFF64B5F6);
  @override
  Color get defaultCell => const Color(0xFFFAFAFA);

  // Card and shadow
  @override
  Color get cardBackground => const Color(0xFF252542);
  @override
  Color get divider => const Color(0xFF3D3D5C);
  @override
  Color get shadow => const Color(0x40000000);

  // Gradients
  @override
  LinearGradient get primaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF6C63FF), Color(0xFF9D97FF)],
  );

  @override
  LinearGradient get secondaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF00D9A5), Color(0xFF5FFFCE)],
  );

  @override
  LinearGradient get cardGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF3D3D5C), Color(0xFF2A2A4A)],
  );

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF252542), Color(0xFF1A1A2E)],
  );

  @override
  Brightness get brightness => Brightness.dark;
}

class LightColorScheme implements AppColorScheme {
  const LightColorScheme();

  @override
  Color get white => const Color(0xFFFFFFFF);
  @override
  Color get black => const Color(0xFF000000);

  // Primary colors
  @override
  Color get primary => const Color(0xFF5046E5);
  @override
  Color get primaryLight => const Color(0xFF7C75FF);
  @override
  Color get primaryDark => const Color(0xFF3730A3);
  @override
  Color get onPrimary => const Color(0xFFFFFFFF);

  // Secondary colors
  @override
  Color get secondary => const Color(0xFF00B386);
  @override
  Color get secondaryLight => const Color(0xFF00D9A5);
  @override
  Color get secondaryDark => const Color(0xFF008060);
  @override
  Color get onSecondary => const Color(0xFFFFFFFF);

  // Background colors
  @override
  Color get background => const Color(0xFFF5F5FA);
  @override
  Color get surface => const Color(0xFFFFFFFF);
  @override
  Color get surfaceLight => const Color(0xFFF0F0F5);
  @override
  Color get surfaceVariant => const Color(0xFFE8E8F0);
  @override
  Color get onBackground => const Color(0xFF1A1A2E);
  @override
  Color get onSurface => const Color(0xFF1A1A2E);

  // Text colors
  @override
  Color get textPrimary => const Color(0xFF1A1A2E);
  @override
  Color get textSecondary => const Color(0xFF6B6B80);
  @override
  Color get textHint => const Color(0xFF9090A0);
  @override
  Color get textDisabled => const Color(0xFFB0B0C0);

  // Status colors
  @override
  Color get error => const Color(0xFFDC2626);
  @override
  Color get success => const Color(0xFF16A34A);
  @override
  Color get warning => const Color(0xFFD97706);
  @override
  Color get info => const Color(0xFF0284C7);

  // Game specific colors
  @override
  Color get dotColor => const Color(0xFF3D5AFE);
  @override
  Color get connectionColor => const Color(0xFF3D5AFE);
  @override
  Color get cardBack => const Color(0xFFE0E0E8);
  @override
  Color get cardFront => const Color(0xFFFFFFFF);
  @override
  Color get redNumber => const Color(0xFFDC2626);
  @override
  Color get blackNumber => const Color(0xFF1A1A2E);
  @override
  Color get highlightedCell => const Color(0xFF93C5FD);
  @override
  Color get defaultCell => const Color(0xFFFFFFFF);

  // Card and shadow
  @override
  Color get cardBackground => const Color(0xFFFFFFFF);
  @override
  Color get divider => const Color(0xFFE0E0E8);
  @override
  Color get shadow => const Color(0x1A000000);

  // Gradients
  @override
  LinearGradient get primaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF5046E5), Color(0xFF7C75FF)],
  );

  @override
  LinearGradient get secondaryGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFF00B386), Color(0xFF00D9A5)],
  );

  @override
  LinearGradient get cardGradient => const LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFFFFF), Color(0xFFF0F0F5)],
  );

  @override
  LinearGradient get backgroundGradient => const LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFFFFFFFF), Color(0xFFF5F5FA)],
  );

  @override
  Brightness get brightness => Brightness.light;
}
