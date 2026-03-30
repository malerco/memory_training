import 'package:flutter/material.dart';

import '../../l10n/app_localizations.dart';
import '../theme/theme.dart';

extension BuildContextExtensions on BuildContext {
  // Theme Extensions
  ThemeData get theme => Theme.of(this);
  AppColorScheme get colors => ThemeProvider.getColorScheme(theme.brightness);
  AppTextTheme get appTextTheme => ThemeProvider.getTextTheme(theme.brightness);
  TextTheme get textStyles => theme.textTheme;
  bool get isDarkMode => theme.brightness == Brightness.dark;
  
  // Localization
  AppLocalizations get appLocale => AppLocalizations.of(this)!;
  
  // Size Extensions
  Size get screenSize => MediaQuery.sizeOf(this);
  double get screenWidth => screenSize.width;
  double get screenHeight => screenSize.height;
  EdgeInsets get padding => MediaQuery.paddingOf(this);
  
  // Responsive Helpers
  bool get isSmallScreen => screenWidth < 600;
  bool get isMediumScreen => screenWidth >= 600 && screenWidth < 1200;
  bool get isLargeScreen => screenWidth >= 1200;
  
  // Navigation
  void pop<T>([T? result]) => Navigator.of(this).pop(result);
  
  // Snackbar
  void showSnackBar(String message, {bool isError = false}) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: isError ? colors.error : null,
      ),
    );
  }
}
