import 'package:flutter/material.dart';
import 'dart:async';
import 'breathingsuccess_screen.dart';

class BreathingLibraryScreen extends StatefulWidget {
  final String exerciseName;

  const BreathingLibraryScreen({super.key, required this.exerciseName});

  @override
  State<BreathingLibraryScreen> createState() => _BreathingLibraryScreenState();
}

class _BreathingLibraryScreenState extends State<BreathingLibraryScreen> {

  Map<String, dynamic> _getExerciseData() {
    if (widget.exerciseName == "4-7-8 Breathing") {
      return {
        "duration": "4 minutes",
        "desc": "Helps reduce intensity and\npromotes relaxation",
        "info1": "4 mins",
        "info2": "Easy",
        "info3": "Stress Relief",
      };
    } else if (widget.exerciseName == "Box Breathing") {
      return {
        "duration": "5 minutes",
        "desc": "Calms the nervous system and\nfocuses the mind sharply",
        "info1": "6 mins",
        "info2": "Medium",
        "info3": "Anxiety Relief",
      };
    } else {
      return {
        "duration": "3 minutes",
        "desc": "Deep belly breathing to clear out\ntension and reset energy",
        "info1": "4 mins",
        "info2": "Easy",
        "info3": "Calming",
      };
    }
  }

  @override
  Widget build(BuildContext context) {
    final data = _getExerciseData();

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
                const SizedBox(height: 40),

                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back_ios, color: Color(0xFF0C6955)),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),

                Text(
                  widget.exerciseName,
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF0C6955),
                  ),
                ),

                const SizedBox(height: 35),

                Text(
                  data["duration"],
                  style: const TextStyle(
                    fontSize: 22,
                    color: Color(0xFF0C6955),
                  ),
                ),

                const SizedBox(height: 40),

                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => BreathingTimerScreen(exerciseName: widget.exerciseName),
                      ),
                    );
                  },
                  child: Container(
                    width: 160,
                    height: 160,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFF0C6955),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 10,
                          offset: Offset(0, 5),
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
                  height: 360,
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
                        const SizedBox(height: 10),

                        Text(
                          data["desc"],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFF0C6955),
                          ),
                        ),

                        const Spacer(),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            _InfoItem(
                              icon: Icons.access_time_filled,
                              text: data["info1"],
                            ),
                            _InfoItem(
                              icon: Icons.directions_walk,
                              text: data["info2"],
                            ),
                            _InfoItem(
                              icon: Icons.spa,
                              text: data["info3"],
                            ),
                          ],
                        ),

                        const SizedBox(height: 35),

                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => BreathingTimerScreen(exerciseName: widget.exerciseName),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0C6955),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
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
        Icon(icon, color: const Color(0xFF0C6955), size: 24),
        const SizedBox(width: 6),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            color: Color(0xFF0C6955),
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class BreathingTimerScreen extends StatefulWidget {
  final String exerciseName;
  const BreathingTimerScreen({super.key, required this.exerciseName});
  @override
  State<BreathingTimerScreen> createState() => _BreathingTimerScreenState();
}

class _BreathingTimerScreenState extends State<BreathingTimerScreen> {
  int _currentStepIndex = 0;

  List<Map<String, dynamic>> _getSteps() {
    if (widget.exerciseName == "4-7-8 Breathing") {
      return [
        {"status": "Inhale", "seconds": "4", "tips": "Tips: Breathe in through your nose", "circleSize": 250.0},
        {"status": "Hold", "seconds": "7", "tips": "Tips: Hold your breath", "circleSize": 250.0},
        {"status": "Exhale", "seconds": "8", "tips": "Tips: Breathe out completely through your mouth", "circleSize": 170.0}
      ];
    } else if (widget.exerciseName == "Box Breathing") {
      return [
        {"status": "Inhale", "seconds": "4", "tips": "Tips: Breathe in slowly", "circleSize": 250.0},
        {"status": "Hold", "seconds": "4", "tips": "Tips: Hold your breath", "circleSize": 250.0},
        {"status": "Exhale", "seconds": "4", "tips": "Tips: Release smoothly", "circleSize": 170.0},
        {"status": "Hold", "seconds": "4", "tips": "Tips: Rest before next breath", "circleSize": 170.0}
      ];
    } else {
      return [
        {"status": "Inhale", "seconds": "5", "tips": "Tips: Deep breath in", "circleSize": 250.0},
        {"status": "Exhale", "seconds": "5", "tips": "Tips: Slow breath out", "circleSize": 170.0}
      ];
    }
  }

  void _showExitDialog() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 28.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text("Are you sure you want to end this session?", textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 8),
                const Text("Your progress for this round won't be saved", textAlign: TextAlign.center, style: TextStyle(fontSize: 14, color: Colors.grey)),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: SizedBox(
                    height: 48,
                        child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E614D),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 0,
                        padding: EdgeInsets.zero,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          },
                        child: const Text(
                            "End Session",
                            style: TextStyle(color: Colors.white),
                        ),
                        ),
                      ),
                    ),

                    const SizedBox(width: 10),

            Expanded(
                child: SizedBox(
                  height: 48,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Color(0xFF0C6955), width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      padding: EdgeInsets.zero,
                    ),
                    onPressed: () => Navigator.pop(context),
                    child: const Text(
                      "Keep Breathing",
                      style: TextStyle(
                        color: Color(0xFF0C6955),
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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
    final steps = _getSteps();
    setState(() {
      if (_currentStepIndex < steps.length - 1) {
        _currentStepIndex++;
      } else {
        _currentStepIndex = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final steps = _getSteps();
    final currentStep = steps[_currentStepIndex];

    return Scaffold(
      backgroundColor: const Color(0xFFE5F4F0),
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
                    onPressed: () {
                      _showExitDialog();
                    },
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                widget.exerciseName,
                style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Color(0xFF1E614D)),
              ),
              const SizedBox(height: 8),
              Text(
                "Step ${_currentStepIndex + 1} of ${steps.length}",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              const SizedBox(height: 40),
              AnimatedContainer(
                duration: const Duration(milliseconds: 500),
                width: currentStep["circleSize"],
                height: currentStep["circleSize"],
                decoration: const BoxDecoration(shape: BoxShape.circle, color: Color(0xFF1E614D)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(currentStep["status"], style: const TextStyle(fontSize: 20, color: Colors.white)),
                      Text(currentStep["seconds"], style: const TextStyle(fontSize: 64, fontWeight: FontWeight.bold, color: Colors.white)),
                      const Text("seconds", style: TextStyle(fontSize: 16, color: Colors.white70)),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: Text(currentStep["tips"], textAlign: TextAlign.center, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Color(0xFF1E614D))),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFF1E614D), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25))),
                  onPressed: () {
                    if (_currentStepIndex == steps.length - 1) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BreathingSuccessScreen(exerciseName: widget.exerciseName),
                        ),
                      );
                    } else {
                      _nextStep();
                    }
                  },
                  child: Text(_currentStepIndex == steps.length - 1 ? "Finish" : "Next Step", style: const TextStyle(fontSize: 16, color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

