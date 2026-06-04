import 'package:flutter/material.dart';
import 'onboarding1_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF6F7FB),

      body: Container(
        width: double.infinity,
        height: double.infinity,

        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/welcome frame bg.jpg"),
            fit: BoxFit.cover,
        ),
      ),
        
        child: SafeArea(
            child: Padding(
                padding: const EdgeInsetsGeometry.symmetric(
                  horizontal: 24,
                  vertical: 20,
                ),

              child: Column(
                children: [

                  const Spacer(),

                  const Text(
                    "Mindful Break",
                    style: TextStyle(
                      fontFamily: "Black Ops One",
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),

                  const SizedBox(height: 12),

                  const Text(
                    "Take a mindful break, you've got this",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.black54,
                    ),
                  ),

                  const Spacer(),

                  SizedBox(
                    width: double.infinity,
                    height: 55,

                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                            const Onboarding1Screen(),
                          ),
                        );
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                        const Color(0xFF66BCA8),

                        shape: RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(18),
                        ),
                      ),

                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
              ]
            ),
              ),
        ),
        ),
    );
  }
}