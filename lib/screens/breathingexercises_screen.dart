import 'package:flutter/material.dart';
import 'package:mindful_break/screens/breathinglibrary_screen.dart';

class BreathingExercisesScreen extends StatefulWidget {
  const BreathingExercisesScreen({super.key});

  @override
  State<BreathingExercisesScreen> createState() => _BreathingExercisesScreenState();
}

class _BreathingExercisesScreenState extends State<BreathingExercisesScreen> {
  String _selectedCategory = 'All';

  final List<Map<String, String>> _exercises = [
    {"name": "4-7-8 Breathing", "duration": "4 min", "category": "Deep"},
    {"name": "Box Breathing", "duration": "6 min", "category": "Focus"},
    {"name": "Calm Breathing", "duration": "3 min", "category": "Quick"},
    {"name": "Deep Breathing", "duration": "4 min", "category": "Deep"},
    {"name": "Rescue Breath", "duration": "3 min", "category": "Quick"},
  ];

  @override
  Widget build(BuildContext context) {
    final filteredExercises = _selectedCategory == 'All'
        ? _exercises
        : _exercises.where((e) => e['category'] == _selectedCategory).toList();

    return Scaffold(
      backgroundColor: const Color(0xFFE5F4F0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF1E614D)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border, color: Color(0xFF1E614D)),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Breathing Exercises",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xFF1E614D),
              ),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: ['All', 'Quick', 'Focus', 'Deep'].map((category) {
                final isSelected = _selectedCategory == category;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selectedCategory = category;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color(0xFF1E614D) : Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      category,
                      style: TextStyle(
                        color: isSelected ? Colors.white : const Color(0xFF1E614D),
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 24),

            Expanded(
              child: ListView.builder(
                itemCount: filteredExercises.length,
                itemBuilder: (context, index) {
                  final item = filteredExercises[index];
                  return Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      title: Text(
                        item["name"]!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1E614D),
                        ),
                      ),
                      subtitle: Padding(
                        padding: const EdgeInsets.only(top: 4.0),
                        child: Text(
                          item["duration"]!,
                          style: TextStyle(color: Colors.grey[600], fontSize: 13),
                        ),
                      ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF1E614D),
                        size: 18,
                      ),
                      onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BreathingTimerScreen(
                                exerciseName: item["name"]!,
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