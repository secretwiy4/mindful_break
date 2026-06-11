import 'package:flutter/material.dart';

class ProgressOverviewScreen extends StatelessWidget {
  const ProgressOverviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Progress Overview', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A))),
              const SizedBox(height: 15),

              Row(
                children: ['Week', 'Month', 'All time'].map((tab) {
                  bool isSelected = tab == 'Week';
                  return Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                    decoration: BoxDecoration(
                      color: isSelected ? const Color(0xff3D5A50) : const Color(0xffC6ECE1),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(tab, style: TextStyle(color: isSelected ? Colors.white : Colors.black87, fontSize: 12, fontWeight: FontWeight.w500)),
                  );
                }).toList(),
              ),
              const SizedBox(height: 25),

              _buildProgressCard('Breathing Sessions', '15', 'this week', Colors.teal),
              _buildProgressCard('Minutes Practices', '55', 'this week', Colors.blue),
              _buildProgressCard('Mood Check-in', '7', 'this week', Colors.orange),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProgressCard(String title, String value, String subtitle, Color barColor) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.black12, width: 0.5)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(color: Colors.black54, fontSize: 11, fontWeight: FontWeight.w500)),
              const SizedBox(height: 4),
              Text(value, style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Colors.black87)),
              Text(subtitle, style: const TextStyle(color: Colors.grey, fontSize: 9)),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [15.0, 25.0, 45.0, 20.0, 35.0].map((height) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 2.5),
                width: 6,
                height: height,
                decoration: BoxDecoration(color: barColor, borderRadius: BorderRadius.circular(1)),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}