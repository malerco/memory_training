import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:memory_training/core/constants/app_constants.dart';

import 'core/di/injection.dart';
import 'core/router/app_router.dart';
import 'core/theme/theme_provider.dart';
import 'l10n/app_localizations.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await configureDependencies();

  runApp(const MemoryTrainingApp());
}

class MemoryTrainingApp extends StatelessWidget {
  const MemoryTrainingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: AppConstants.appName,
      debugShowCheckedModeBanner: false,
      theme: ThemeProvider.darkTheme,
      darkTheme: ThemeProvider.darkTheme,
      themeMode: ThemeMode.dark,
      locale: _getLocale(PlatformDispatcher.instance.locale.languageCode),
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      routerConfig: AppRouter.router,
    );
  }

  Locale _getLocale(String code) {
    switch (code) {
      case 'ru': return const Locale('ru');
      case 'es': return const Locale('es');
      case 'fr': return const Locale('fr');
      case 'de': return const Locale('de');
      case 'zh': return const Locale('zh');
      case 'ja': return const Locale('ja');
      case 'ko': return const Locale('ko');
      case 'pt': return const Locale('pt');
      case 'it': return const Locale('it');
      case 'ar': return const Locale('ar');
      case 'hi': return const Locale('hi');
      case 'tr': return const Locale('tr');
      default: return const Locale('en');
    }
  }
}