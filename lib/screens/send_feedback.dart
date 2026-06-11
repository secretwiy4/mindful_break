import 'package:flutter/material.dart';
import '../theme_colors.dart';

class SendFeedback extends StatelessWidget {
  const SendFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: AppColors.darkSage,
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white, size: 18),
              onPressed: () => Navigator.pop(context),
            ),
          ),
        ),
        title: const Text('Settings', style: TextStyle(color: AppColors.textLight, fontSize: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Send Feedback', style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),
            const Text('Your Feedback', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
              ),
            ),
            const SizedBox(height: 24),
            const Text('Rating', style: TextStyle(color: AppColors.textDark, fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            Row(
              children: List.generate(
                5,
                    (index) => const Icon(Icons.star, color: Colors.amber, size: 28),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.sageGreen,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Thank you for your feedback!')),
                );
              },
              child: const Text('Send Feedback', style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}