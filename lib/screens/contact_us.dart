import 'package:flutter/material.dart';
import '../theme_colors.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

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
        title: const Text('Helps & Support', style: TextStyle(color: AppColors.textLight, fontSize: 16)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Contact Us', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            _buildContactItem(Icons.email_outlined, 'support@mindfulbreak.com'),
            _buildContactItem(Icons.phone_android, '+60 12-345 6789'),
            _buildContactItem(Icons.language, 'www.mindfulbreak.com'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactItem(IconData icon, String detail) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Icon(icon, color: AppColors.darkSage, size: 26),
          const SizedBox(width: 16),
          Text(detail, style: const TextStyle(fontSize: 16, color: AppColors.textDark)),
        ],
      ),
    );
  }
}