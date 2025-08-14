import 'package:flutter/material.dart';
import 'package:rallytics/features/live_score/domain/entities/live_match_entity.dart';
import 'package:rallytics/features/live_score/presentation/widgets/team_score_row.dart';

class LiveScoreCard extends StatelessWidget {
  final LiveMatchEntity match;

  const LiveScoreCard({super.key, required this.match});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TeamScoreRow(
              teamName: match.homeTeamName,
              teamScore: match.homeTeamScore,
              teamHashImage: match.homeTeamName,
            ),
            const SizedBox(height: 16),
            TeamScoreRow(
              teamName: match.awayTeamName,
              teamScore: match.awayTeamScore,
              teamHashImage: match.awayTeamHashImage,
            ),
          ],
        ),
      ),
    );
  }
}
