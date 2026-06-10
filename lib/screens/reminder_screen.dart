import 'package:flutter/material.dart';
import 'mood_tracker_screen.dart';

class ReminderScreen extends StatefulWidget {
  const ReminderScreen({super.key});

  @override
  State<ReminderScreen> createState() => _ReminderScreenState();
}

class _ReminderScreenState extends State<ReminderScreen> {
  bool val1 = true;
  bool val2 = true;
  bool val3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Reminders', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 20),

            // Reminder 1
            _buildReminderTile("Daily Reminder", "Get a reminder to take a mindful break", val1, (v) => setState(() => val1 = v)),
            _buildTimeDropdown("8.00 a.m"),
            const SizedBox(height: 20),

            // Reminder 2
            _buildReminderTile("Study Break Reminder", "Remind me to take break during study sessions", val2, (v) => setState(() => val2 = v)),
            _buildTimeDropdown("10 min"),
            const SizedBox(height: 20),

            // Reminder 3
            _buildReminderTile("Off day", "Get a reminder to calm down your day", val3, (v) => setState(() => val3 = v)),

            const Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff3D5A50),
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MoodTrackerScreen()),
                );
              },
              child: const Text('Save', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildReminderTile(String title, String subtitle, bool val, Function(bool) onChanged) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 12)),
            ],
          ),
        ),
        Switch(value: val, onChanged: onChanged, activeColor: const Color(0xff3D5A50))
      ],
    );
  }

  Widget _buildTimeDropdown(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(color: Colors.white.withValues(alpha: 0.6), borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(text), const Icon(Icons.refresh, size: 18, color: Colors.grey)],
      ),
    );
  }
}