import 'package:flutter/material.dart';
import 'package:rallytics/app/theme/app_colors.dart';

class TennisBallPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;
    final stripeWidth = size.width * 0.12;

    final ballPaint = Paint()
      ..color = AppColors.tenisBall
      ..style = PaintingStyle.fill;

    final stripePaint = Paint()
      ..color = AppColors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = stripeWidth
      ..strokeCap = StrokeCap.round;

    canvas.drawCircle(center, radius, ballPaint);

    final clipPath = Path()
      ..addOval(Rect.fromCircle(center: center, radius: radius));
    canvas.clipPath(clipPath);

    final path = Path();

    final startPoint = Offset(0, center.dy);
    final middlePoint = Offset(center.dx, center.dy);
    final endPoint = Offset(size.width, center.dy);

    path.moveTo(startPoint.dx, startPoint.dy);

    final controlPoint1 = Offset(center.dx * 0.5, size.height * 0.15);
    path.quadraticBezierTo(
      controlPoint1.dx,
      controlPoint1.dy,
      middlePoint.dx,
      middlePoint.dy,
    );

    final controlPoint2 = Offset(center.dx * 1.5, size.height * 0.85);
    path.quadraticBezierTo(
      controlPoint2.dx,
      controlPoint2.dy,
      endPoint.dx,
      endPoint.dy,
    );

    canvas.drawPath(path, stripePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
