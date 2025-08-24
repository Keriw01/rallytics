import 'package:flutter/material.dart';
import 'package:rallytics/core/presentation/widgets/shimmer_box.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class NewsArticlesShimmerCard extends StatelessWidget {
  const NewsArticlesShimmerCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Shimmer(
        interval: Duration(seconds: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ShimmerBox(height: 32),
                  const SizedBox(height: 16),
                  Align(
                    alignment: Alignment.centerRight,
                    child: const ShimmerBox(width: 64, height: 16),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
