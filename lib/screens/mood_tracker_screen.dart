import 'package:flutter/material.dart';
import 'progress_overview_screen.dart';

class MoodTrackerScreen extends StatelessWidget {
  const MoodTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text('How are you feeling today?', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 5),
              const Text('< May 2026 >', style: TextStyle(color: Colors.grey, fontSize: 13)),
              const SizedBox(height: 20),

              Table(
                children: [
                  const TableRow(children: [
                    Center(child: Text('S', style: TextStyle(fontWeight: FontWeight.bold))),
                    Center(child: Text('M', style: TextStyle(fontWeight: FontWeight.bold))),
                    Center(child: Text('T', style: TextStyle(fontWeight: FontWeight.bold))),
                    Center(child: Text('W', style: TextStyle(fontWeight: FontWeight.bold))),
                    Center(child: Text('T', style: TextStyle(fontWeight: FontWeight.bold))),
                    Center(child: Text('F', style: TextStyle(fontWeight: FontWeight.bold))),
                    Center(child: Text('S', style: TextStyle(fontWeight: FontWeight.bold)))
                  ]),
                  _buildCalendarRow(['1','2','3','4','5','6','7'], highlight: true),
                  _buildCalendarRow(['8','9','10','11','12','13','14'], highlight: true),
                  _buildCalendarRow(['15','16','17','18','19','20','21']),
                  _buildCalendarRow(['22','23','24','25','26','27','28']),
                  _buildCalendarRow(['29','30','','','','','']),
                ],
              ),
              const SizedBox(height: 30),
              const Text("Today's mood", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              const SizedBox(height: 20),

              Wrap(
                spacing: 20, runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  _buildMoodIcon('😊', 'Ecstatic'), _buildMoodIcon('🙂', 'Happy'),
                  _buildMoodIcon('😐', 'Calm'), _buildMoodIcon('😌', 'Relaxed'),
                  _buildMoodIcon('😰', 'Stressed'), _buildMoodIcon('😔', 'Sad'),
                  _buildMoodIcon('😴', 'Sleepy'), _buildMoodIcon('😡', 'Angry'),
                ],
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3D5A50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProgressOverviewScreen()),
                    );
                  },
                  child: const Text('Next', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildCalendarRow(List<String> days, {bool highlight = false}) {
    return TableRow(
      children: days.map((day) {
        return Container(
          margin: const EdgeInsets.all(4),
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: highlight && day.isNotEmpty ? const Color(0xffBCE8DB) : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Center(child: Text(day, style: const TextStyle(fontSize: 14))),
        );
      }).toList(),
    );
  }

  Widget _buildMoodIcon(String emoji, String label) {
    return SizedBox(
      width: 65,
      child: Column(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 32)),
          const SizedBox(height: 4),
          Text(label, style: const TextStyle(fontSize: 10, color: Colors.black54), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}