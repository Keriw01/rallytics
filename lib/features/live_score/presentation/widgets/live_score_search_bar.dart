import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_bloc.dart';
import 'package:rallytics/features/live_score/presentation/bloc/live_score_event.dart';
import 'package:rallytics/generated/l10n.dart';

class LiveScoreSearchBar extends StatelessWidget {
  const LiveScoreSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SearchBar(
        hintText: S.of(context).searchHint,
        leading: const Icon(Icons.search),
        onChanged: (query) {
          context.read<LiveScoreBloc>().add(
            LiveScoreEvent.searchQueryChanged(query),
          );
        },
      ),
    );
  }
}
