import 'package:flutter/material.dart';
import 'login_screen.dart'; // Make sure path ini betul bila buat fail login nanti

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 48), // Kosongkan ruang atas sbb xde skip butang dah
              const Spacer(),
              Image.asset("images/lace.jpg", height: 250),
              const Spacer(),
              const Text(
                "Achieve Academic Balance",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              const Text(
                "Stay on top of your exams and studies without sacrificing your mental health.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(width: 8, height: 8, decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(4))),
                      const SizedBox(width: 4),
                      Container(width: 8, height: 8, decoration: BoxDecoration(color: Colors.black26, borderRadius: BorderRadius.circular(4))),
                      const SizedBox(width: 4),
                      Container(width: 24, height: 8, decoration: BoxDecoration(color: const Color(0xFF5D6BFF), borderRadius: BorderRadius.circular(4))),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (_) => const LoginScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF5D6BFF),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                    ),
                    child: const Text("Continue", style: TextStyle(color: Colors.white)),
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