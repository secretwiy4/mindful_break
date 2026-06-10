import 'package:flutter/material.dart';

class ProgressOverviewScreen extends StatelessWidget {
  const ProgressOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Progress Overview', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),

            // Toggle Filter Waktu (Week / Month / All time)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: ['Week', 'Month', 'All time'].map((tab) {
                bool isSelected = tab == 'Week';
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xff3D5A50) : Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(tab, style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
                );
              }).toList(),
            ),
            const SizedBox(height: 25),

            // Card 1: Breathing Sessions
            _buildProgressCard('Breathing Sessions', '15', 'This week', Colors.teal),
            // Card 2: Minutes Practices
            _buildProgressCard('Minutes Practices', '55', 'This week', Colors.blue),
            // Card 3: Mood Check-in
            _buildProgressCard('Mood Check-in', '7', 'This week', Colors.orange),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressCard(String title, String value, String subtitle, Color barColor) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(color: Colors.grey, fontSize: 12)),
                const SizedBox(height: 5),
                Text(value, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
                Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 10)),
              ],
            ),
            // Grafik Batang Sederhana
            Row(
              crossAxisAlignment : CrossAxisAlignment.end,
              children: [15.0, 25.0, 45.0, 20.0, 35.0].map((height) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 3),
                  width: 8,
                  height: height,
                  decoration: BoxDecoration(color: barColor, borderRadius: BorderRadius.circular(4)),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}