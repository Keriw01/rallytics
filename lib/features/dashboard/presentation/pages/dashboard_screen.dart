import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rallytics/app/theme/app_colors.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/dashboard/presentation/widgets/feature_tile.dart';
import 'package:rallytics/generated/l10n.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double tileWidth = (screenWidth / 2) - 20;

    final String? userEmail = context.read<AuthBloc>().state.maybeMap(
      authenticated: (user) => user.user.email,
      orElse: () => null,
    );

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).appTitle), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
          child: Column(
            children: [
              SizedBox(height: screenHeight * 0.04),
              Text(
                S
                    .of(context)
                    .welcomeUserMessage(userEmail ?? S.of(context).unknowUser),
                style: Theme.of(context).textTheme.titleLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.02),
              Text(
                S.of(context).dashboardWelcomeSubtitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: screenHeight * 0.04),
              //TODO: Handle onTap for FeatureTile
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: tileWidth,
                    height: tileWidth * 1.1,
                    child: FeatureTile(
                      title: S.of(context).dashboardLiveScoresTitle,
                      description: S.of(context).dashboardLiveScoresDescription,
                      icon: Icons.sports_tennis,
                      iconColor: AppColors.tennisRacketIcon,
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  SizedBox(
                    width: tileWidth,
                    height: tileWidth * 1.1,
                    child: FeatureTile(
                      title: S.of(context).dashboardNewsTitle,
                      description: S.of(context).dashboardNewsDescription,
                      icon: Icons.article,
                      iconColor: AppColors.newsIcon,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: tileWidth,
                    height: tileWidth * 1.1,
                    child: FeatureTile(
                      title: S.of(context).dashboardAiCoachTitle,
                      description: S.of(context).dashboardAiCoachDescription,
                      icon: Icons.model_training,
                      iconColor: AppColors.bulbIcon,
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.04),
                  SizedBox(
                    width: tileWidth,
                    height: tileWidth * 1.1,
                    child: FeatureTile(
                      title: S.of(context).dashboardTrainingHistoryTitle,
                      description: S
                          .of(context)
                          .dashboardTrainingHistoryDescription,
                      icon: Icons.history,
                      iconColor: AppColors.historyIcon,
                      onTap: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
