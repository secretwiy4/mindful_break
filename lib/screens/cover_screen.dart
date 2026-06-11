import 'package:flutter/material.dart';
import '../theme_colors.dart';
import 'onboarding1.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => const Onboarding1()),
          );
        },
        child: Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/cover.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: const SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.spa, size: 60, color: AppColors.darkSage),
                SizedBox(height: 16),
                Text(
                  'Mindful Break',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: AppColors.darkSage),
                ),
                SizedBox(height: 8),
                Text(
                  'Your calm. Your focus.\nYour best this exam week.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: AppColors.darkSage, fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}