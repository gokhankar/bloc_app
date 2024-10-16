import 'package:bloc_app/core/theme/app_theme.dart';
import 'package:bloc_app/features/presentation/pages/login_page.dart';
import 'package:bloc_app/features/presentation/pages/signup_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Blog App',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkThemeMode,
        // home: const SignUpPage());
        home: const LoginPage());
  }
}
