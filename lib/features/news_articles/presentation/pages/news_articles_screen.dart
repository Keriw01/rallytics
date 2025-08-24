import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/core/di/injection.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_bloc.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_event.dart';
import 'package:rallytics/features/news_articles/presentation/bloc/news_articles_state.dart';
import 'package:rallytics/features/news_articles/presentation/widgets/custom_read_more_box.dart';
import 'package:rallytics/features/news_articles/presentation/widgets/news_articles_shimmer_card.dart';
import 'package:rallytics/generated/l10n.dart';

class NewsArticlesScreen extends StatelessWidget {
  const NewsArticlesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<NewsArticlesBloc>()
            ..add(const NewsArticlesEvent.watchNewsArticlesStarted()),
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(S.of(context).newsArticlesTitle),
        ),
        body: SafeArea(
          child: BlocBuilder<NewsArticlesBloc, NewsArticlesState>(
            builder: (context, state) {
              return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () {
                  return ListView.builder(
                    itemCount: 12,
                    itemBuilder: (context, index) {
                      return const NewsArticlesShimmerCard();
                    },
                  );
                },
                error: (message) =>
                    Center(child: Text(S.of(context).newsArticlesError)),
                loaded: (allNewsArticles) {
                  if (allNewsArticles.isEmpty) {
                    return Center(child: Text(S.of(context).newsArticlesEmpty));
                  } else {
                    return ListView.builder(
                      itemCount: allNewsArticles.length,
                      itemBuilder: (context, index) {
                        final newsArticle = allNewsArticles[index];
                        return CustomReadMoreBox(
                          title: newsArticle.rewrittenTitle,
                          content: newsArticle.rewrittenContent,
                        );
                      },
                    );
                  }
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
