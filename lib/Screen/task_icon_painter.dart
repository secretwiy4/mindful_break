import 'package:flutter/material.dart';

class TaskIconPainter extends CustomPainter {
  final int iconIndex;
  TaskIconPainter({required this.iconIndex});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff222222)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0
      ..strokeCap = StrokeCap.round;

    if (iconIndex == 0) {
      canvas.drawCircle(Offset(size.width * 0.55, size.height * 0.2), 2.5, paint..style = PaintingStyle.fill);
      paint.style = PaintingStyle.stroke;
      canvas.drawLine(Offset(size.width * 0.52, size.height * 0.32), Offset(size.width * 0.45, size.height * 0.6), paint);
      canvas.drawLine(Offset(size.width * 0.52, size.height * 0.35), Offset(size.width * 0.32, size.height * 0.45), paint);
      canvas.drawLine(Offset(size.width * 0.52, size.height * 0.35), Offset(size.width * 0.68, size.height * 0.5), paint);
      canvas.drawLine(Offset(size.width * 0.45, size.height * 0.6), Offset(size.width * 0.62, size.height * 0.85), paint);
      canvas.drawLine(Offset(size.width * 0.45, size.height * 0.6), Offset(size.width * 0.3, size.height * 0.8), paint);
    }
    else if (iconIndex == 1) {
      canvas.drawRect(Rect.fromLTWH(2, 4, 18, 20), paint);
      canvas.drawLine(Offset(size.width * 0.6, size.height * 0.15), Offset(size.width * 0.95, size.height * 0.5), paint..strokeWidth = 2.5);
      paint.strokeWidth = 1.5;
      canvas.drawLine(const Offset(6, 10), const Offset(14, 10), paint);
      canvas.drawLine(const Offset(6, 14), const Offset(14, 14), paint);
      canvas.drawLine(const Offset(6, 18), const Offset(11, 18), paint);
    }
    else if (iconIndex == 2) {
      canvas.drawCircle(Offset(size.width * 0.5, size.height * 0.25), 3, paint..style = PaintingStyle.fill);
      paint.style = PaintingStyle.stroke;
      final bodyPath = Path()
        ..moveTo(size.width * 0.25, size.height * 0.75)
        ..quadraticBezierTo(size.width * 0.5, size.height * 0.4, size.width * 0.75, size.height * 0.75)
        ..moveTo(size.width * 0.15, size.height * 0.8)
        ..lineTo(size.width * 0.85, size.height * 0.8);
      canvas.drawPath(bodyPath, paint);
    }
    else if (iconIndex == 3) {
      final glassPath = Path()
        ..moveTo(size.width * 0.25, size.height * 0.15)
        ..lineTo(size.width * 0.75, size.height * 0.15)
        ..lineTo(size.width * 0.65, size.height * 0.85)
        ..lineTo(size.width * 0.35, size.height * 0.85)
        ..close();
      canvas.drawPath(glassPath, paint);
      canvas.drawLine(Offset(size.width * 0.29, size.height * 0.45), Offset(size.width * 0.71, size.height * 0.45), paint..strokeWidth = 1.5);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}