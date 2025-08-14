import 'package:flutter/material.dart';
import 'package:rallytics/core/presentation/widgets/shimmer_box.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class ShimmerCard extends StatelessWidget {
  const ShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Shimmer(
          interval: Duration(seconds: 2),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const ShimmerBox(width: 48, height: 48, borderRadius: 48),
                    const SizedBox(width: 8),
                    Expanded(child: const ShimmerBox(width: double.infinity)),
                    const SizedBox(width: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ShimmerBox(width: 64),
                        const SizedBox(width: 16),
                        const ShimmerBox(width: 12, height: 16),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    const ShimmerBox(width: 48, height: 48, borderRadius: 48),
                    const SizedBox(width: 8),
                    Expanded(child: const ShimmerBox(width: double.infinity)),
                    const SizedBox(width: 16),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const ShimmerBox(width: 64),
                        const SizedBox(width: 16),
                        const ShimmerBox(width: 12, height: 16),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
