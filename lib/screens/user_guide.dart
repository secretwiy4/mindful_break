import 'package:flutter/material.dart';
import '../theme_colors.dart';

class UserGuide extends StatelessWidget {
  const UserGuide({super.key});

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
            const Text('User Guide', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  _buildStepTile('Step 1', 'Create your profile'),
                  _buildStepTile('Step 2', 'Explore mindfulness activities'),
                  _buildStepTile('Step 3', 'Track your progress daily'),
                  _buildStepTile('Step 4', 'Complete exercises regularly'),
                  _buildStepTile('Step 5', 'Monitor improvement through reports'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStepTile(String step, String text) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
        side: BorderSide(color: Colors.grey.shade200),
      ),
      child: ListTile(
        title: Text(step, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(text),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}