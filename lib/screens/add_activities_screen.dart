import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class AddActivitiesScreen extends StatelessWidget {
  final VoidCallback onNext;
  const AddActivitiesScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> activities = [
      {'name': 'Breathing Exercise', 'icon': Icons.air_outlined},
      {'name': 'Study Session', 'icon': Icons.menu_book_outlined},
      {'name': 'Self-care Activity', 'icon': Icons.spa_outlined},
      {'name': 'Mindful Walk', 'icon': Icons.directions_walk_outlined},
      {'name': 'Journal', 'icon': Icons.edit_note_outlined},
      {'name': 'Reminder', 'icon': Icons.notifications_none_outlined},
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.arrow_back_ios, color: Colors.black, size: 18),
              const SizedBox(height: 10),
              const Text(
                'Add Activity',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A)),
              ),
              const Text('What would you like to add?', style: TextStyle(fontSize: 13, color: Colors.black54)),
              const SizedBox(height: 25),
              Expanded(
                child: ListView.builder(
                  itemCount: activities.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      height: 48,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                        color: const Color(0xffF5FBF9),
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.black87, width: 0.8),
                      ),
                      child: Row(
                        children: [
                          Icon(activities[index]['icon'], color: Colors.black87, size: 20),
                          const SizedBox(width: 15),
                          Text(activities[index]['name'], style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black87)),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3D5A50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: onNext,
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