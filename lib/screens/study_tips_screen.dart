import 'package:flutter/material.dart';

class StudyTipsScreen extends StatelessWidget {
  final VoidCallback onNext;
  const StudyTipsScreen({super.key,required this.onNext});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tips = [
      {'title': 'Plan Your Time', 'desc': 'Create a realistic\nstudy schedule', 'icon': '⏰'},
      {'title': 'Take Breaks', 'desc': 'Short breaks improve\nfocus and retention', 'icon': '🔄'},
      {'title': 'Active Recall', 'desc': 'Test yourself to remember\nbetter', 'icon': '🧠'},
      {'title': 'Stay Hydrated', 'desc': 'Drink water to keep your\nbrain alert', 'icon': '🥛'},
      {'title': 'Positive Self-talk', 'desc': 'Encourage yourself every day', 'icon': '💡'},
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
                'Study Tips',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A)),
              ),
              const SizedBox(height: 20),
              Expanded(
                child: ListView.builder(
                  itemCount: tips.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 50,
                            height: 75,
                            color: const Color(0xffEBF7F4),
                            child: Center(child: Text(tips[index]['icon']!, style: const TextStyle(fontSize: 22))),
                          ),
                          const SizedBox(width: 15),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(tips[index]['title']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                                const SizedBox(height: 3),
                                Text(tips[index]['desc']!, style: const TextStyle(color: Colors.black54, fontSize: 11, height: 1.2)),
                              ],
                            ),
                          ),
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