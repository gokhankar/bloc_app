import 'package:bloc_app/core/paswords/app_passwords.dart';
import 'package:bloc_app/core/theme/app_theme.dart';
import 'package:bloc_app/features/presentation/pages/login_page.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: AppPasswords.supabase_url,
    anonKey: AppPasswords.supabase_anon,
  );
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
