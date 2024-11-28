import 'package:flutter/material.dart';
import 'package:musika/core/configs/theme/app_theme.dart';
import 'package:musika/presentation/splash/pages/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Musika',
        theme: AppTheme.lightTheme,
        home: const SplashPage());
  }
}
