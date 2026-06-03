import 'package:flutter/material.dart';
import 'onboarding2_screen.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: TextButton(
                    onPressed: (){},
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.black54, fontSize: 16),
                  ),
                ),
              ),
              const Spacer(),
              // Onboarding Image
              Image.asset(
                "images/lace.jpg",
                height: 250,
              ),
              const Spacer(),
              // Title & Subtitle
              const Text(
                "Track Your Mood",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                "Understand your emotions and keep track of your daily mental well-being easily.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const Spacer(),
              // Bottom Section (Indicator & Next Button)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Simple Indicator Dot
                  Row(
                    children: [
                      Container(width: 24, height: 8, decoration: BoxDecoration(color: const Color(0xFF66BCA8), borderRadius: BorderRadius.circular(4))),
                      const SizedBox(width: 4),
                      Container(width: 8, height: 8, decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(4))),
                      const SizedBox(width: 4),
                      Container(width: 8, height: 8, decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(4))),
                    ],
                  ),
                  // Next Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const Onboarding2Screen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF66BCA8),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text("Next", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}