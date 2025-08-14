import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:rallytics/app/theme/app_colors.dart';
import 'package:rallytics/features/live_score/domain/entities/score_entity.dart';

class TeamScoreRow extends StatelessWidget {
  final String teamName;
  final ScoreEntity teamScore;
  final String? teamHashImage;

  const TeamScoreRow({
    super.key,
    required this.teamName,
    required this.teamScore,
    required this.teamHashImage,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      children: [
        CircleAvatar(
          child: CachedNetworkImage(
            imageUrl: 'https://images.sportdevs.com/$teamHashImage.png',

            placeholder: (context, url) => Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                padding: EdgeInsets.all(8),
              ),
            ),

            errorWidget: (context, url, error) =>
                Icon(Icons.person, color: AppColors.white),

            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(child: Text(teamName, style: textTheme.bodyMedium)),
        const SizedBox(width: 16),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              teamScore.setScoresDisplay,
              style: textTheme.bodyMedium?.copyWith(color: AppColors.grey),
            ),
            const SizedBox(width: 16),
            Text(
              '${teamScore.current}',
              style: textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
