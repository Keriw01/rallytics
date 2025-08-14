import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/features/live_score/presentation/widgets/live_score_shimmer_card.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_bloc.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_event.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_state.dart';
import 'package:rallytics/features/live_score/presentation/widgets/live_score_card.dart';
import 'package:rallytics/features/live_score/presentation/widgets/live_score_search_bar.dart';
import 'package:rallytics/generated/l10n.dart';

class LiveScoreScreen extends StatelessWidget {
  const LiveScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<LiveScoreBloc>()
            ..add(const LiveScoreEvent.watchLiveScoresStarted()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(S.of(context).liveScoresTitle),
        ),
        body: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 8),
              const LiveScoreSearchBar(),
              const SizedBox(height: 16),
              Expanded(
                child: BlocBuilder<LiveScoreBloc, LiveScoreState>(
                  builder: (context, state) {
                    return state.when(
                      initial: () => const SizedBox.shrink(),
                      loading: () {
                        return ListView.builder(
                          itemCount: 12,
                          itemBuilder: (context, index) {
                            return const ShimmerCard();
                          },
                        );
                      },
                      error: (message) =>
                          Center(child: Text(S.of(context).liveScoresError)),
                      loaded: (allMatches, filteredMatches, searchQuery) {
                        if (filteredMatches.isEmpty) {
                          if (allMatches.isEmpty) {
                            return Center(
                              child: Text(S.of(context).liveScoresEmpty),
                            );
                          } else {
                            return Center(
                              child: Text(S.of(context).liveScoresNoResults),
                            );
                          }
                        }
                        return ListView.builder(
                          itemCount: filteredMatches.length,
                          itemBuilder: (context, index) {
                            final match = filteredMatches[index];
                            return LiveScoreCard(match: match);
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
