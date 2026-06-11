import 'package:flutter/material.dart';
import '../theme_colors.dart';
import 'faq.dart';
import 'user_guide.dart';
import 'report_problem.dart';
import 'send_feedback.dart';
import 'contact_us.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({super.key});

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
            const Text('Helps & Support', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),
            _buildMenuTile(context, Icons.help_outline, 'FAQ', const Faq()),
            _buildMenuTile(context, Icons.menu_book, 'User Guide', const UserGuide()),
            _buildMenuTile(context, Icons.bug_report_outlined, 'Report Problem', const ReportProblem()),
            _buildMenuTile(context, Icons.lightbulb_outline, 'Send Feedback', const SendFeedback()),
            _buildMenuTile(context, Icons.phone_android, 'Contact Us', const ContactUs()),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuTile(BuildContext context, IconData icon, String title, Widget destination) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: ListTile(
        leading: Icon(icon, color: AppColors.textDark),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w500)),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => destination)),
      ),
    );
  }
}