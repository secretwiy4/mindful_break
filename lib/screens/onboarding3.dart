import 'package:flutter/material.dart';
import '../theme_colors.dart';
import 'welcome_frame.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/onboarding3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: AppColors.darkSage),
                  onPressed: () => Navigator.pop(context),
                ),
                const Spacer(),
                const Text(
                  'Resources that\nsupport you.',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.darkSage),
                ),
                const SizedBox(height: 16),
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.8),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const Text(
                    'Practical tips, study hacks and self-care resources tailored for exam weeks.',
                    style: TextStyle(fontSize: 15, color: AppColors.textDark),
                  ),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: AppColors.darkSage,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const WelcomeScreen()));
                    },
                    child: const Icon(Icons.arrow_forward, color: Colors.white),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}