import 'package:flutter/material.dart';

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

                const SizedBox(height: 60),

                // Play Button
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) =>
                        const BreathingDetailScreen(),
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
                          color: Colors.black.withOpacity(0.15),
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
                                  const BreathingDetailScreen(),
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

class BreathingDetailScreen extends StatelessWidget {
  const BreathingDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Breathing Detail"),
      ),

      body: const Center(
        child: Text(
          "Next Screen",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}