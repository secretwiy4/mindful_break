import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

class TulipPotPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xff1f3d37)
      ..style = PaintingStyle.fill;

    final potPath = Path()
      ..moveTo(size.width * 0.25, size.height * 0.95)
      ..lineTo(size.width * 0.75, size.height * 0.95)
      ..lineTo(size.width * 0.85, size.height * 0.55)
      ..lineTo(size.width * 0.15, size.height * 0.55)
      ..close();
    canvas.drawPath(potPath, paint);

    paint.style = PaintingStyle.stroke;
    paint.strokeWidth = 3.5;
    paint.strokeCap = StrokeCap.round;

    canvas.drawLine(Offset(size.width * 0.5, size.height * 0.55), Offset(size.width * 0.5, size.height * 0.25), paint);
    final leftStem = Path()
      ..moveTo(size.width * 0.4, size.height * 0.55)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.45, size.width * 0.25, size.height * 0.3);
    canvas.drawPath(leftStem, paint);
    final rightStem = Path()
      ..moveTo(size.width * 0.6, size.height * 0.55)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.45, size.width * 0.75, size.height * 0.3);
    canvas.drawPath(rightStem, paint);

    paint.style = PaintingStyle.fill;

    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.25, size.height * 0.23), width: 14, height: 18), paint);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.5, size.height * 0.16), width: 15, height: 20), paint);
    canvas.drawOval(Rect.fromCenter(center: Offset(size.width * 0.75, size.height * 0.23), width: 14, height: 18), paint);

    final leftLeaf = Path()
      ..moveTo(size.width * 0.35, size.height * 0.52)
      ..quadraticBezierTo(size.width * 0.1, size.height * 0.42, size.width * 0.12, size.height * 0.32)
      ..quadraticBezierTo(size.width * 0.25, size.height * 0.42, size.width * 0.38, size.height * 0.48)
      ..close();
    canvas.drawPath(leftLeaf, paint);

    final rightLeaf = Path()
      ..moveTo(size.width * 0.65, size.height * 0.52)
      ..quadraticBezierTo(size.width * 0.9, size.height * 0.42, size.width * 0.88, size.height * 0.32)
      ..quadraticBezierTo(size.width * 0.75, size.height * 0.42, size.width * 0.62, size.height * 0.48)
      ..close();
    canvas.drawPath(rightLeaf, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}