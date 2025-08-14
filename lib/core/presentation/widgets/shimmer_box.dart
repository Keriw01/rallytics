import 'package:flutter/material.dart';
import 'package:rallytics/app/theme/app_colors.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShimmerBox extends StatelessWidget {
  final double? width;
  final double height;
  final double borderRadius;

  const ShimmerBox({
    super.key,
    this.width,
    this.height = 14,
    this.borderRadius = 12,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),

      child: Shimmer(
        colorOpacity: 0.9,
        child: Container(
          width: width,
          height: height,
          decoration: ShapeDecoration(
            color: AppColors.grey300,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
