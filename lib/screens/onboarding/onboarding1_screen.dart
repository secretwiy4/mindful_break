import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Onboarding 1",
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}