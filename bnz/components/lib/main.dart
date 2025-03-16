import 'package:flutter/material.dart';
import 'constants/theme_constants.dart';
import 'screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primaryColor: ThemeConstants.primaryBlue,
        scaffoldBackgroundColor: ThemeConstants.white,
      ),
      home: const LoginScreen(),
    );
  }
}
