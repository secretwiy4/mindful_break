import 'package:flutter/material.dart';

class ReminderScreen extends StatefulWidget {
  final VoidCallback onNext;
  const ReminderScreen({super.key, required this.onNext});

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Reminders', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A))),
              const SizedBox(height: 25),

              _buildReminderTile("Daily Reminder", "Get a reminder to take a mindful break", val1, (v) => setState(() => val1 = v)),
              _buildTimeDropdown("8.00 a.m"),
              const SizedBox(height: 20),

              _buildReminderTile("Study Break Reminder", "Remind me to take break during study sessions", val2, (v) => setState(() => val2 = v)),
              _buildTimeDropdown("10 min ^"),
              const SizedBox(height: 20),

              _buildReminderTile("Off day", "Get a reminder to calm down your day", val3, (v) => setState(() => val3 = v)),

              const Spacer(),
              Center(
                child: SizedBox(
                  width: 140,
                  height: 40,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff3D5A50),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                    onPressed: widget.onNext,
                    child: const Text('Save', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
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
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xff1C2E2A))),
              Text(subtitle, style: const TextStyle(color: Colors.black54, fontSize: 11)),
            ],
          ),
        ),
        Switch(
            value: val,
            onChanged: onChanged,
            activeThumbColor: const Color(0xff3D5A50),
            activeTrackColor: const Color(0xff3D5A50).withValues(alpha: 0.4)
        )
      ],
    );
  }

  Widget _buildTimeDropdown(String text) {
    return Container(
      margin: const EdgeInsets.only(top: 8),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(color: const Color(0xffC6ECE1), borderRadius: BorderRadius.circular(6)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text, style: const TextStyle(fontSize: 13, color: Colors.black87)),
          const Icon(Icons.refresh, size: 16, color: Colors.black87)
        ],
      ),
    );
  }
}