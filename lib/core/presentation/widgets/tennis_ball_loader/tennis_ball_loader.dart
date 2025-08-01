import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rallytics/core/presentation/widgets/tennis_ball_loader/tennis_ball_painter.dart';
import 'package:rallytics/core/presentation/widgets/tennis_ball_loader/swoosh_painter.dart';

class TennisBallLoader extends StatefulWidget {
  final double size;

  const TennisBallLoader({super.key, this.size = 80.0});

  @override
  State<TennisBallLoader> createState() => _TennisBallLoaderState();
}

class _TennisBallLoaderState extends State<TennisBallLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ModalBarrier(dismissible: false, color: Colors.black54),
        Center(
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Stack(
                alignment: Alignment.center,
                children: [
                  Transform.rotate(
                    angle: _controller.value * 2 * pi,
                    child: CustomPaint(
                      size: Size(widget.size, widget.size),
                      painter: SwooshPainter(),
                    ),
                  ),
                  Transform.rotate(
                    angle: _controller.value * 2 * pi,
                    child: Transform.translate(
                      offset: Offset(widget.size / 2, 0),
                      child: Transform.rotate(
                        angle: _controller.value * pi,
                        child: CustomPaint(
                          size: Size(widget.size / 2.5, widget.size / 2.5),
                          painter: TennisBallPainter(),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
