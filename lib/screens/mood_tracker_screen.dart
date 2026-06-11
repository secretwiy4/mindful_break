import 'package:flutter/material.dart';

class MoodTrackerScreen extends StatelessWidget {
  final VoidCallback onNext;
  const MoodTrackerScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const Text('How are you feeling today?', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A))),
              const SizedBox(height: 4),
              const Text('< May 2026 >', style: TextStyle(color: Colors.black54, fontSize: 12)),
              const SizedBox(height: 15),

              Table(
                children: [
                  const TableRow(children: [
                    Center(child: Text('S', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    Center(child: Text('M', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    Center(child: Text('T', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    Center(child: Text('W', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    Center(child: Text('T', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    Center(child: Text('F', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600))),
                    Center(child: Text('S', style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600)))
                  ]),
                  _buildCalendarRow(['1','2','3','4','5','6','7'], highlight: true),
                  _buildCalendarRow(['8','9','10','11','12','13','14'], highlight: true),
                  _buildCalendarRow(['15','16','17','18','19','20','21']),
                  _buildCalendarRow(['22','23','24','25','26','27','28']),
                  _buildCalendarRow(['29','30','','','','','']),
                ],
              ),
              const SizedBox(height: 20),
              const Text("Today's mood", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Color(0xff1C2E2A))),
              const SizedBox(height: 15),

              Wrap(
                spacing: 15, runSpacing: 15,
                alignment: WrapAlignment.center,
                children: [
                  _buildMoodIcon('😊', 'Ecstatic'), _buildMoodIcon('🙂', 'Happy'),
                  _buildMoodIcon('😐', 'Calm'), _buildMoodIcon('😌', 'Relaxed'),
                  _buildMoodIcon('😰', 'Stressed'), _buildMoodIcon('😔', 'Sad'),
                  _buildMoodIcon('😴', 'Sleepy'), _buildMoodIcon('😡', 'Angry'),
                ],
              ),
              const SizedBox(height: 25),
              SizedBox(
                width: double.infinity,
                height: 42,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff3D5A50),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                  ),
                  onPressed: onNext,
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
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
            color: highlight && day.isNotEmpty ? const Color(0xffBCE8DB) : Colors.transparent,
            shape: BoxShape.circle,
          ),
          child: Center(child: Text(day, style: const TextStyle(fontSize: 13, color: Colors.black87))),
        );
      }).toList(),
    );
  }

  Widget _buildMoodIcon(String emoji, String label) {
    return SizedBox(
      width: 60,
      child: Column(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 28)),
          const SizedBox(height: 2),
          Text(label, style: const TextStyle(fontSize: 9, color: Colors.black54), textAlign: TextAlign.center),
        ],
      ),
    );
  }
}