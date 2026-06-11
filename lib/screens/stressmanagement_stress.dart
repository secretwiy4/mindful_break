import 'package:flutter/material.dart';
import 'package:mindful_break/screens/resourcearticle_screen.dart';

class StressManagementScreen extends StatelessWidget {
  const StressManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> sections = [
      {
        "title": "Understanding Stress",
        "image": "assets/images/stress_forest.jpg", // 👈 Letak path gambar kau kat sini
        "content": "Stress is the body's physical and emotional response to challenges, pressure, or demands. It can happen when you face situations that feel difficult, threatening, or overwhelming.",
        "extraWidget": true, // Untuk tunjuk tag 'Feeling Anxious' dll dekat bawah artikel
        "tips": ["Identify Triggers", "Deep Breathing", "Take Breaks", "Stay Positive"],

      },
      {
        "title": "During Exam Week",
        "image": "assets/images/exam_week.jpg",
        "content": "Exam week can be overwhelming, but managing your study environment and habits can drastically lower your stress levels. Focus on progress, not perfection.",
        "extraWidget": false,
        "tips": ["Pomodoro Technique", "Stay Hydrated", "One Task at a Time", "Take Short Walks"],
      },
      {
        "title": "Quick Relief Technique",
        "image": "assets/images/quick_relief.jpg",
        "content": "When panic or sudden stress hits, grounding brings your mind back to the present moment by forcing you to notice your current physical surroundings. The 5-4-3-2-1 Grounding Method is a powerful tool to anchor yourself and calm your nervous system instantly.",
        "extraWidget": false,
        "tips": ["5 Things to See", "4 Things to Touch", "3 Things to Hear", "2 Things to Smell"],
      },
      {
        "title": "Long Term Resilience",
        "image": "assets/images/long_term.jpg",
        "content": "Resilience isn't built overnight. It is developed through small, consistent daily practices that strengthen your mental well-being against future challenges. Focus on the 4 pillars of Resilience to maintain a healthy and balanced mind.",
        "extraWidget": false,
        "tips": ["Mindful Journaling", "Quality Sleep", "Balanced Nutrition", "Self-Compassion"],
      },
    ];

    return Scaffold(
      backgroundColor: const Color(0xFFE5F4F0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF1E614D)),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                "Stress Management",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E614D),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // 2. Senarai butang yang boleh di-klik!
            Expanded(
              child: ListView.builder(
                itemCount: sections.length,
                itemBuilder: (context, index) {
                  final item = sections[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    height: 80,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 10,
                          offset: const Offset(0, 4),
                        )
                      ],
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      title: Text(
                        item["title"],
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF2C3E35),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF1E614D),
                        size: 20,
                      ),

                      // 🔥 FUNGSI KLIK: Hantar data ke skrin artikel secara dinamik!
                      onTap: () {
                        final currentItem = sections[index];
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ResourceArticleScreen(
                              title: item["title"] ?? "No Title",
                              content: item["content"] ?? "No Content",
                              imagePath: item["image"] ?? "assets/images/stress_forest.jpg",
                              tips: currentItem["tips"] != null
                                  ? List<String>.from(item["tips"])
                                  : const [],
                            ),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}