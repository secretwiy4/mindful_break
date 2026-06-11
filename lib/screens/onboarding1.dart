import 'package:flutter/material.dart';
import '../theme_colors.dart';
import 'onboarding2.dart';

class Onboarding1 extends StatelessWidget {
  const Onboarding1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/Onboarding 4.jpg"),
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
                  'Exam weeks can be\noverwhelming',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: AppColors.darkSage),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Mindful Break helps you stay calm,\nfocus and mentally strong.',
                  style: TextStyle(fontSize: 16, color: AppColors.textDark, height: 1.5),
                ),
                const Spacer(),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    backgroundColor: AppColors.darkSage,
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) => const Onboarding2()));
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