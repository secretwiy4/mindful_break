import 'package:flutter/material.dart';
import '../theme_colors.dart';

class Faq extends StatelessWidget {
  const Faq({super.key});

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
            const Text('FAQ', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: const [
                  ExpansionTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('What is Mindful Break?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('A wellness application designed to help users manage stress and improve focus.'),
                      )
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('How do I track my progress?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Visit the Progress page from the navigation bar.'),
                      )
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.help_outline),
                    title: Text('Is my data secure?'),
                    children: [
                      Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Text('Yes, your information is kept private and secure.'),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}