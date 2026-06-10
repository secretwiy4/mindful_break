import 'package:flutter/material.dart';

class EmojiPainter extends CustomPainter {
  final int index;
  final Color color;

  EmojiPainter({required this.index, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.8
      ..strokeCap = StrokeCap.round;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2 - 2;

    canvas.drawCircle(center, radius, paint);

    if (index == 0) {
      canvas.drawArc(Rect.fromLTWH(14, 18, 12, 10), 3.14, 3.14, false, paint);
      canvas.drawArc(Rect.fromLTWH(34, 18, 12, 10), 3.14, 3.14, false, paint);
      canvas.drawArc(Rect.fromLTWH(18, 28, 24, 16), 0, 3.14, false, paint);
    }
    else if (index == 1) {
      paint.style = PaintingStyle.fill;
      canvas.drawCircle(const Offset(20, 24), 3.5, paint);
      canvas.drawCircle(const Offset(40, 24), 3.5, paint);
      paint.style = PaintingStyle.stroke;
      canvas.drawLine(const Offset(20, 40), const Offset(40, 40), paint);
    }
    else if (index == 2) {
      canvas.drawLine(const Offset(16, 20), const Offset(24, 25), paint);
      canvas.drawLine(const Offset(24, 25), const Offset(16, 30), paint);
      canvas.drawLine(const Offset(44, 20), const Offset(36, 25), paint);
      canvas.drawLine(const Offset(36, 25), const Offset(44, 30), paint);

      final mouthPath = Path()
        ..moveTo(18, 41)
        ..lineTo(23, 37)
        ..lineTo(28, 41)
        ..lineTo(33, 37)
        ..lineTo(38, 41)
        ..lineTo(42, 37);
      canvas.drawPath(mouthPath, paint);
    }
    else if (index == 3) {
      final leftEyePath = Path()
        ..moveTo(16, 19)
        ..lineTo(23, 23)
        ..lineTo(16, 27);
      canvas.drawPath(leftEyePath, paint);

      final rightEyePath = Path()
        ..moveTo(44, 19)
        ..lineTo(37, 23)
        ..lineTo(44, 27);
      canvas.drawPath(rightEyePath, paint);

      canvas.drawArc(Rect.fromLTWH(18, 36, 24, 14), 3.14, 3.14, false, paint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}