import 'package:flutter/material.dart';
import 'reminder_screen.dart';

class AddActivitiesScreen extends StatelessWidget {
  const AddActivitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> activities = [
      {'name': 'Breathing Exercise', 'icon': Icons.air},
      {'name': 'Study Session', 'icon': Icons.menu_book},
      {'name': 'Self-care Activity', 'icon': Icons.spa},
      {'name': 'Mindful Walk', 'icon': Icons.directions_walk},
      {'name': 'Journal', 'icon': Icons.book_online},
      {'name': 'Reminder', 'icon': Icons.notifications_none},
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
                onPressed: () => Navigator.pop(context),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: Text(
                  'Add Activity',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A)),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, bottom: 25.0),
                child: Text('What would you like to add?', style: TextStyle(fontSize: 14, color: Colors.grey)),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      height: 55,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                        border: Border.all(color: Colors.grey.shade300, width: 0.5),
                      ),
                      child: Row(
                        children: [
                          Icon(activities[index]['icon'], color: Colors.black54, size: 22),
                          const SizedBox(width: 15),
                          Text(activities[index]['name'], style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              // Button Next Berfungsi
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3D5A50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ReminderScreen()),
                    );
                  },
                  child: const Text('Next', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}