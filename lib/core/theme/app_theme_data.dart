import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_color_scheme.dart';
import 'app_text_theme.dart';

class AppThemeData {
  final AppColorScheme colorScheme;
  late final AppTextTheme _textTheme;

  AppThemeData(this.colorScheme) {
    _textTheme = AppTextTheme(colorScheme);
  }

  ThemeData get themeData => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    primaryColor: colorScheme.primary,
    scaffoldBackgroundColor: colorScheme.background,
    colorScheme: ColorScheme(
      brightness: colorScheme.brightness,
      primary: colorScheme.primary,
      onPrimary: colorScheme.onPrimary,
      primaryContainer: colorScheme.primaryDark,
      secondary: colorScheme.secondary,
      onSecondary: colorScheme.onSecondary,
      secondaryContainer: colorScheme.secondaryDark,
      error: colorScheme.error,
      onError: colorScheme.white,
      surface: colorScheme.surface,
      onSurface: colorScheme.onSurface,
    ),
    textTheme: _textTheme.textTheme,
    appBarTheme: AppBarTheme(
      backgroundColor: colorScheme.background,
      foregroundColor: colorScheme.textPrimary,
      elevation: 0,
      centerTitle: true,
      systemOverlayStyle: colorScheme.brightness == Brightness.dark
          ? SystemUiOverlayStyle.light
          : SystemUiOverlayStyle.dark,
      titleTextStyle: _textTheme.textTheme.titleLarge,
      iconTheme: IconThemeData(color: colorScheme.textPrimary),
    ),
    cardTheme: CardThemeData(
      color: colorScheme.cardBackground,
      elevation: 8,
      shadowColor: colorScheme.shadow,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primary,
        foregroundColor: colorScheme.onPrimary,
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        elevation: 4,
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: colorScheme.primary,
        side: BorderSide(color: colorScheme.primary, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: colorScheme.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
    ),
    iconTheme: IconThemeData(
      color: colorScheme.textPrimary,
      size: 24,
    ),
    dividerTheme: DividerThemeData(
      color: colorScheme.divider,
      thickness: 1,
      space: 1,
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: colorScheme.surface,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      titleTextStyle: _textTheme.textTheme.titleLarge,
      contentTextStyle: _textTheme.textTheme.bodyMedium,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: colorScheme.surfaceLight,
      contentTextStyle: TextStyle(color: colorScheme.textPrimary),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      behavior: SnackBarBehavior.floating,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: colorScheme.surface,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary;
        }
        return colorScheme.textHint;
      }),
      trackColor: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return colorScheme.primary.withOpacity(0.5);
        }
        return colorScheme.surfaceVariant;
      }),
    ),
    progressIndicatorTheme: ProgressIndicatorThemeData(
      color: colorScheme.primary,
      linearTrackColor: colorScheme.surfaceVariant,
    ),
  );

  AppTextTheme get textTheme => _textTheme;
}
