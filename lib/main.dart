import 'package:flutter/material.dart';
import 'package:mindful_break/screens/cover_screen.dart';
import 'package:mindful_break/screens/home_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindful Break',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const CoverScreen(),
    );
  }
}