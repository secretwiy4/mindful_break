import 'package:flutter/material.dart';

class ProgressReminderScreen extends StatelessWidget {
  final VoidCallback onNext;
  const ProgressReminderScreen({super.key, required this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Your Progress..', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Color(0xff1C2E2A))),
              const SizedBox(height: 10),
              const Text('Track your mood to\nunderstand your pattern.', style: TextStyle(fontSize: 13, color: Colors.black54, height: 1.3)),
              const SizedBox(height: 25),
              const Center(child: Text('< May 2026 >', style: TextStyle(color: Colors.black54, fontSize: 12))),
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
                  _buildCalendarRow(['1','2','3','4','5','6','7']),
                  _buildCalendarRow(['8','9','10','11','12','13','14']),
                  _buildCalendarRow(['15','16','17','18','19','20','21']),
                  _buildCalendarRow(['22','23','24','25','26','27','28']),
                  _buildCalendarRow(['29','30','','','','','']),
                ],
              ),
              const Spacer(),
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
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  TableRow _buildCalendarRow(List<String> days) {
    return TableRow(
      children: days.map((day) {
        return Container(
          margin: const EdgeInsets.all(3),
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Center(child: Text(day, style: const TextStyle(fontSize: 13, color: Colors.black87))),
        );
      }).toList(),
    );
  }
}