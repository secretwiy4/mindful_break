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
                        const BreathingTimerScreen(),
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
                                  const BreathingTimerScreen(),
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
  const BreathingTimerScreen({super.key});

  @override
  State<BreathingTimerScreen> createState() => _BreathingTimerScreenState();
}

class _BreathingTimerScreenState extends State<BreathingTimerScreen> {
  static const Color colorBg = Color(0xffE8F7F2);
  static const Color colorTextPrimary = Color(0xff1A3B32);
  static const Color colorTextSecondary = Color(0xff3A5A50);
  static const Color colorButton = Color(0xff0D5C46);

  bool _isStarted = false;
  String _breathingStatus = "Ready?";
  double _circleSize = 200.0;
  Timer? _timer;

  int _selectedMinutes = 1;
  int _totalSecondsRemaining = 60;
  int _initialTotalSeconds = 60;
  int _secondsElapsed = 0;

  void _startBreathing() {
    setState(() {
      _isStarted = true;
      _initialTotalSeconds = _selectedMinutes * 60;
      _totalSecondsRemaining = _initialTotalSeconds;
      _secondsElapsed = 0;
    });

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_totalSecondsRemaining <= 0) {
        _stopBreathing(isComplete: true);
        return;
      }

      setState(() {
        _totalSecondsRemaining--;
        _secondsElapsed++;

        // Kitaran 12 saat Box Breathing (4s In, 4s Hold, 4s Out)
        int cycleTime = _secondsElapsed % 12;
        if (cycleTime < 4) {
          _breathingStatus = "Breathe In... 🧠";
          _circleSize = 250.0;
        } else if (cycleTime < 8) {
          _breathingStatus = "Hold... ⏱️";
          _circleSize = 250.0;
        } else {
          _breathingStatus = "Breathe Out... 💨";
          _circleSize = 170.0;
        }
      });
    });
  }

  void _stopBreathing({bool isComplete = false}) {
    _timer?.cancel();
    setState(() {
      _isStarted = false;
      _circleSize = 200.0;
      if (isComplete) {
        _breathingStatus = "🎉 Session Complete! Good Job!";
        _totalSecondsRemaining = _selectedMinutes * 60;
      } else {
        _breathingStatus = "Session Paused";
      }
    });
  }

  // Tukar format saat ke bentuk MM:SS (Contoh: 01:30)
  String _formatTime(int totalSeconds) {
    int minutes = totalSeconds ~/ 60;
    int seconds = totalSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Kira peratus progress bar bulat
    double progressProgress = _isStarted
        ? (_totalSecondsRemaining / _initialTotalSeconds)
        : 1.0;

    return Scaffold(
      backgroundColor: colorBg,
      body: SafeArea(
        child: Column(
          children: [
            // --- 1. APP BAR HEADER ---
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
                      decoration: const BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                      child: Icon(Icons.arrow_back, color: colorTextPrimary, size: 20),
                    ),
                  ),
                  Text("Breathing Timer", style: TextStyle(color: colorTextSecondary, fontSize: 16, fontWeight: FontWeight.bold)),
                  const SizedBox(width: 40),
                ],
              ),
            ),
            const Spacer(),

            // --- 2. THE CORE CIRCULAR PROGRESS & ANIMATING CIRCLE ---
            Center(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  // Progress Bar Bulat kat luar (Berpusing ikut masa berkurang)
                  SizedBox(
                    width: 290,
                    height: 290,
                    child: CircularProgressIndicator(
                      value: progressProgress,
                      strokeWidth: 6,
                      valueColor: AlwaysStoppedAnimation<Color>(colorButton),
                      backgroundColor: const Color(0xffD1EAE2),
                    ),
                  ),
                  // Bulatan Kembang-Kuncup kat dalam
                  AnimatedContainer(
                    duration: const Duration(seconds: 4),
                    curve: Curves.easeInOut,
                    width: _circleSize,
                    height: _circleSize,
                    decoration: const BoxDecoration(
                      color: Color(0xffBCDEC4),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        _formatTime(_totalSecondsRemaining),
                        style: TextStyle(color: colorTextPrimary, fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),

            // --- 3. STATUS TEXT ---
            Text(_breathingStatus, style: TextStyle(color: colorTextPrimary, fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 24),

            // --- 4. DURATION SELECTION (Hanya muncul kalau belum start) ---
            if (!_isStarted) ...[
              Text("Select Session Duration:", style: TextStyle(color: colorTextSecondary, fontWeight: FontWeight.w500)),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [1, 2, 5].map((minutes) {
                  bool isSelected = _selectedMinutes == minutes;
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 6.0),
                    child: ChoiceChip(
                      label: Text("$minutes Min"),
                      selected: isSelected,
                      selectedColor: colorButton,
                      labelStyle: TextStyle(color: isSelected ? Colors.white : colorTextPrimary),
                      backgroundColor: Colors.white,
                      onSelected: (bool selected) {
                        setState(() {
                          _selectedMinutes = minutes;
                          _totalSecondsRemaining = minutes * 60;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ],
            const Spacer(),

            // --- 5. CONTROL BUTTON ---
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _isStarted ? () => _stopBreathing() : _startBreathing,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _isStarted ? Colors.white : colorButton,
                    side: _isStarted ? BorderSide(color: colorButton, width: 2) : BorderSide.none,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    elevation: 0,
                  ),
                  child: Text(
                    _isStarted ? "Pause" : "Start",
                    style: TextStyle(color: _isStarted ? colorButton : Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}