
import 'package:flutter/material.dart';
import 'package:proyecto2/config/theme/app_theme.dart';
import 'package:proyecto2/presentation/home/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Apptheme().themeData(),
      home: const HomeScreen(),
    );
  }
}

