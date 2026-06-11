import 'package:flutter/material.dart';
import 'package:mindful_break/screens/home_screen.dart';

class BreathingSuccessScreen extends StatefulWidget {
  final String exerciseName;

  const BreathingSuccessScreen({super.key, required this.exerciseName});

  @override
  State<BreathingSuccessScreen> createState() => _BreathingSuccessScreenState();
}

class _BreathingSuccessScreenState extends State<BreathingSuccessScreen> {
  int _selectedMoodIndex = -1;
  final TextEditingController _noteController = TextEditingController();

  final List<Map<String, dynamic>> _moods = [
    {"emoji": "😊", "color": const Color(0xFFBA68C8)},
    {"emoji": "😢", "color": const Color(0xFF64B5F6)},
    {"emoji": "😡", "color": const Color(0xFFEF5350)},
    {"emoji": "😖", "color": const Color(0xFFFFB74D)},
  ];

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE5F4F0), // Background pastel Figma
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),

              const Text(
                "Great Job!",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E614D),
                ),
              ),
              const SizedBox(height: 12),

              const Text(
                "You completed",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF1E614D),
                ),
              ),
              const SizedBox(height: 8),

              Text(
                widget.exerciseName,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E614D),
                ),
              ),
              const SizedBox(height: 40),

              // 3. Ikon Besar Tanda Green Tick
              Container(
                width: 120,
                height: 120,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1E614D),
                ),
                child: const Icon(
                  Icons.check,
                  size: 70,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 50),

              // 4. Soalan Emosi
              const Text(
                "How do you feel?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E614D),
                ),
              ),
              const SizedBox(height: 24),

              // 5. Barisan Emoji Interaktif
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(_moods.length, (index) {
                  final isSelected = _selectedMoodIndex == index;
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedMoodIndex = index; // Tukar status bila di-klik
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _moods[index]["color"],
                        border: isSelected
                            ? Border.all(color: const Color(0xFF1E614D), width: 4) // Garisan hijau kalau dipilih
                            : null,
                        boxShadow: isSelected
                            ? [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 8)]
                            : [],
                      ),
                      child: Text(
                        _moods[index]["emoji"],
                        style: const TextStyle(fontSize: 32),
                      ),
                    ),
                  );
                }),
              ),
              const SizedBox(height: 40),

              // 6. Kotak Nota (Optional Input)
              TextField(
                controller: _noteController,
                maxLines: 2,
                decoration: InputDecoration(
                  hintText: "Add a note (optional)",
                  hintStyle: TextStyle(color: Colors.grey[600]),
                  fillColor: const Color(0xFFF4FAF8),
                  filled: true,
                  contentPadding: const EdgeInsets.all(16),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF1E614D), width: 1),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Color(0xFF1E614D), width: 2),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // 7. Butang Done Utama
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E614D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                        ),
                        );
                  },
                  child: const Text(
                    "Done",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}