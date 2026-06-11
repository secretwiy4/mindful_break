import 'package:flutter/material.dart';
import 'screens/welcome_screen.dart'; // Memanggil skrin welcome kamu yang betul

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mindful Break',
      debugShowCheckedModeBanner: false, // Hilangkan tag debug merah dekat emulator
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const WelcomeScreen(), // Set skrin utama ke WelcomeScreen
    );
  }
}