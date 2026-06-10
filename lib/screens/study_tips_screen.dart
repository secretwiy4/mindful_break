import 'package:flutter/material.dart';
import 'add_activities_screen.dart';

class StudyTipsScreen extends StatelessWidget {
  const StudyTipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tips = [
      {'title': 'Plan Your Time', 'desc': 'Create a realistic study schedule', 'icon': '⏰'},
      {'title': 'Take Breaks', 'desc': 'Short breaks improve focus and retention', 'icon': '🔄'},
      {'title': 'Active Recall', 'desc': 'Test yourself to remember better', 'icon': '🧠'},
      {'title': 'Stay Hydrated', 'desc': 'Drink water to keep your brain alert', 'icon': '🥛'},
      {'title': 'Positive Self-talk', 'desc': 'Encourage yourself every day', 'icon': '💡'},
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
                onPressed: () {},
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8.0, bottom: 20.0),
                child: Text(
                  'Study Tips',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A)),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: tips.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: const Color(0xffBCE8DB), width: 1.5),
                            ),
                            child: Center(child: Text(tips[index]['icon']!, style: const TextStyle(fontSize: 20))),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(tips[index]['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                                const SizedBox(height: 3),
                                Text(tips[index]['desc']!, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                              ],
                            ),
                          ),
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
                      MaterialPageRoute(builder: (context) => const AddActivitiesScreen()),
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