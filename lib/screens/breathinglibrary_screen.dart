import 'package:flutter/material.dart';
import 'dart:async';

class BreathingLibraryScreen extends StatelessWidget {
  const BreathingLibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFDDF5EE),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),

          child: Container(
            width: double.infinity,

            decoration: BoxDecoration(
              color: const Color(0xFFDDF5EE),
              borderRadius: BorderRadius.circular(35),
            ),

            child: Column(
              children: [
                const SizedBox(height: 80),

                const Text(
                  "4-7-8 Breathing",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0C6955),
                  ),
                ),

                const SizedBox(height: 35),

                const Text(
                  "4 minutes",
                  style: TextStyle(
                    fontSize: 22,
                    color: Color(0xFF0C6955),
                  ),
                ),

                const SizedBox(height: 40),

                // Play Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                        const BreathingLibraryScreen(),
                      ),
                    );
                  },

                  child: Container(
                    width: 160,
                    height: 160,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xFF0C6955),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          blurRadius: 10,
                          offset: const Offset(0, 5),
                        ),
                      ],
                    ),

                    child: const Center(
                      child: Icon(
                        Icons.play_arrow_rounded,
                        color: Color(0xFFDDF5EE),
                        size: 90,
                      ),
                    ),
                  ),
                ),

                const Spacer(),

                Container(
                  width: double.infinity,
                  height: 380,

                  decoration: const BoxDecoration(
                    color: Color(0xFF98E0CF),

                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),

                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 35,
                    ),

                    child: Column(
                      children: [
                        const SizedBox(height: 30),

                        const Text(
                          "Helps reduce intensity and\npromotes relaxation",
                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0C6955),
                          ),
                        ),

                        const Spacer(),

                        Row(
                          mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,

                          children: const [
                            _InfoItem(
                              icon: Icons.access_time_filled,
                              text: "4 mins",
                            ),
                            _InfoItem(
                              icon: Icons.directions_walk,
                              text: "Easy",
                            ),
                            _InfoItem(
                              icon: Icons.spa,
                              text: "Stress Relief",
                            ),
                          ],
                        ),

                        const SizedBox(height: 45),

                        SizedBox(
                          width: double.infinity,
                          height: 60,

                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) =>
                                  const BreathingLibraryScreen(),
                                ),
                              );
                            },

                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                              const Color(0xFF0C6955),

                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(20),
                              ),

                              elevation: 8,
                            ),

                            child: const Text(
                              "Start",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _InfoItem extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoItem({
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: const Color(0xFF0C6955),
          size: 28,
        ),

        const SizedBox(width: 8),

        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF0C6955),
          ),
        ),
      ],
    );
  }
}

/// TEMP SCREEN
/// nanti ganti dengan screen sebenar

class BreathingTimerScreen extends StatefulWidget {
  final String exerciseName;

  const BreathingTimerScreen({super.key, required this.exerciseName});

  @override
  State<BreathingTimerScreen> createState() => _BreathingTimerScreenState();
}

class _BreathingTimerScreenState extends State<BreathingTimerScreen> {
  int _currentStepIndex = 0; // Bermula dari Step 1 (Index 0)

// List data untuk setiap langkah ikut Figma kau
  final List<Map<String, dynamic>> _breathingSteps = [
    {
      "status": "Inhale",
      "seconds": "4",
      "tips": "Tips: Breathe in through your nose",
      "circleSize": 250.0,
    },
    {
      "status": "Hold",
      "seconds": "7",
      "tips": "Tips: Hold your breath",
      "circleSize": 250.0,
    },
    {
      "status": "Exhale",
      "seconds": "8",
      "tips": "Tips: Breathe out completely through your mouth",
      "circleSize": 170.0,
    }
  ];

  void _showExitDialog() {
    showDialog(
      context: context,
      barrierDismissible: false, // User wajib tekan butang, tak leh klik luar untuk tutup
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20), // Bucu bulat macam Figma kau
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.min, // Saiz kotak ikut isi kandungan
              children: [
                const Text(
                  "Are you sure you want to end this session?",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Your progress for this round won't be saved",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 24),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E614D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "End Session",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),

                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF1E614D),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 12),
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const Text(
                          "Keep Breathing",
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }

  void _nextStep() {
    setState(() {
      if (_currentStepIndex < _breathingSteps.length - 1) {
        _currentStepIndex++; // Pergi ke step seterusnya (Hold / Exhale)
      } else {
        _currentStepIndex = 0; // Dah habis Exhale, patah balik ke Inhale (atau pergi Home)
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Ambil data step semasa berdasarkan index untuk mudahkan coding kat bawah
    final currentStep = _breathingSteps[_currentStepIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFE5F4F0), // Warna background pastel ikut Figma
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF1E614D)),
                    onPressed: _showExitDialog, // Bila tekan, zass keluar overlay Figma tadi!
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.exerciseName,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1E614D),
                ),
              ),
              const SizedBox(height: 8),

              // 2. Info Round (Contoh: Step 1 of 3)
              Text(
                "Step ${_currentStepIndex + 1} of 3",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 40),

              // 3. Bulatan Interaktif (Saiz berubah ikut step secara smooth)
              AnimatedContainer(
                duration: const Duration(milliseconds: 500), // Animasi kembang kempis
                width: currentStep["circleSize"],
                height: currentStep["circleSize"],
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF1E614D),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        currentStep["status"],
                        style: const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Text(
                        currentStep["seconds"],
                        style: const TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      const Text(
                        "seconds",
                        style: TextStyle(fontSize: 16, color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  currentStep["tips"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF1E614D),
                  ),
                ),
              ),
              const SizedBox(height: 50),

              // 5. Butang Manual Next / Continue
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1E614D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  onPressed: _nextStep,
                  child: Text(
                    _currentStepIndex == 2 ? "Finish" : "Next Step",
                    style: const TextStyle(fontSize: 16, color: Colors.white),
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

