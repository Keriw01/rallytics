import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rallytics/app/theme/app_colors.dart';

class SwooshPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    final swooshPaint = Paint()..style = PaintingStyle.fill;

    final gradient = SweepGradient(
      center: Alignment.center,
      startAngle: -pi / 2,
      endAngle: pi,
      colors: [
        AppColors.white.withValues(alpha: 0.0),
        AppColors.white.withValues(alpha: 0.7),
      ],
    );

    swooshPaint.shader = gradient.createShader(
      Rect.fromLTWH(0, 0, size.width, size.height),
    );

    final path = Path();

    const startAngle = 0.0;
    const sweepAngle = pi * 1.5;

    final startWidth = size.width * 0.15;
    final endWidth = size.width * 0.01;

    const steps = 50;

    for (var i = 0; i <= steps; i++) {
      final ratio = i / steps;
      final angle = startAngle - (sweepAngle * ratio);

      final currentWidth = startWidth + (endWidth - startWidth) * ratio;

      final r = size.width / 2 + currentWidth / 2;

      final point = Offset(
        center.dx + r * cos(angle),
        center.dy + r * sin(angle),
      );

      if (i == 0) {
        path.moveTo(point.dx, point.dy);
      } else {
        path.lineTo(point.dx, point.dy);
      }
    }

    for (var i = steps; i >= 0; i--) {
      final ratio = i / steps;
      final angle = startAngle - (sweepAngle * ratio);

      final currentWidth = startWidth + (endWidth - startWidth) * ratio;
      final r = size.width / 2 - currentWidth / 2;

      final point = Offset(
        center.dx + r * cos(angle),
        center.dy + r * sin(angle),
      );

      path.lineTo(point.dx, point.dy);
    }

    path.close();

    canvas.drawPath(path, swooshPaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
