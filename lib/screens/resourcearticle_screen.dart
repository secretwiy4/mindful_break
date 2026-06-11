import 'package:flutter/material.dart';
import 'package:mindful_break/screens/breathinglibrary_screen.dart';
import 'breathingexercises_screen.dart';

class ResourceArticleScreen extends StatelessWidget {
  final String title;
  final String content;
  final String imagePath;
  final List<String>? tips;

  const ResourceArticleScreen({
    super.key,
    required this.title,
    required this.content,
    required this.imagePath,
    this.tips,
  });

  @override
  Widget build(BuildContext context) {
    const colorBg = Color(0xFFE5F4F2);
    const colorTextPrimary = Color(0xFF1A3B32);
    const colorTextSecondary = Color(0xFF5A5A5A);
    const colorButton = Color(0xFF0D5C46);
    const colorCardBorder = Color(0xFFD1EAE2);

    return Scaffold(
      backgroundColor: colorBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 10,
                              offset: Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.arrow_back, color: colorTextPrimary, size: 20),
                      ),
                    ),
                    const Row(
                      children: [
                        Icon(Icons.access_time_filled, color: colorTextSecondary, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "3 min read",
                          style: TextStyle(color: colorTextSecondary, fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: colorTextPrimary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Image.asset(
                        "images/ocean.jpg",
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        color: colorCardBorder,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),

              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          () {
                        if (title == "During Exam Week") return "Managing Exam Anxiety";
                        if (title == "Understanding Stress") return "What is stress?";
                        if (title == "Quick Relief Technique") return "The 5-4-3-2-1 Grounding Method";
                        return "Building Daily Resilience";
                      }(),
                      style: const TextStyle(color: colorTextPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),

                    Text(
                      content,
                      style: const TextStyle(
                        color: colorTextSecondary,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                    const SizedBox(height: 24),

                    Text(
                          () {
                        if (title == "Understanding Stress") return "Signs of excessive stress";
                        if (title == "During Exam Week") return "Quick Tips:";
                        if (title == "Quick Relief Technique") return "Quick Tips:";
                        return "4 pillars of Resilience:";
                      }(),
                      style: const TextStyle(color: colorTextPrimary, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),

                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 160 / 64,
                      children: (tips ?? []).map((tipText) {
                        String emoji = "";
                        if (tipText == "Feeling Anxious") emoji = "🧠";
                        if (tipText == "Muscle Tension") emoji = "⚡";
                        if (tipText == "Sleep Trouble") emoji = "😴";
                        if (tipText == "Fast Heartbeat") emoji = "💔";

                        return _buildGridCard(emoji, tipText, colorTextPrimary, colorCardBorder);
                      }).toList(),
                    ),
                    const SizedBox(height: 32),

                    // BUTTON CALL-TO-ACTION (CTA)
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          String breathingType = "Deep Breathing"; // Default

                          if (title == "During Exam Week") {
                            breathingType = "4-7-8 Breathing";
                          } else if (title == "Quick Relief Technique") {
                            breathingType = "Box Breathing";
                        }
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BreathingExercisesScreen()
                            ),
                          );
                        },


                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: Text(
                          title == "During Exam Week" ? "Try Breathing Exercise" : "Start Breathing",
                          style: const TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGridCard(String emoji, String text, Color textColor, Color borderColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        children: [
          if (emoji.isNotEmpty) ...[
            Text(emoji, style: const TextStyle(fontSize: 20)),
            const SizedBox(width: 8),
          ],
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 13, fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}