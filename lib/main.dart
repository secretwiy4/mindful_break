import 'package:flutter/material.dart';
import 'screens/study_tips_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // Warna latar belakang mint pastel sesuai mockup
        scaffoldBackgroundColor: const Color(0xffE2F6F0),
        fontFamily: 'Sans-Serif',
      ),
      home: const StudyTipsScreen(), // Bermula dari halaman 1
    );
  }
}