import 'package:flutter/material.dart';
import 'package:movieflex/screens/auth/splash_screen.dart';
import 'package:movieflex/services/init_getit.dart';
import 'package:movieflex/services/navigation_service.dart';
import 'package:movieflex/theme/app_theme.dart';

class MovieFlexApp extends StatelessWidget {
  const MovieFlexApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: getIt<NavigationService>().navigatorKey,
      themeMode: ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      home: SplashScreen(),
    );
  }
}
