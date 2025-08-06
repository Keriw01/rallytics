import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rallytics/app/theme/app_colors.dart';
import 'package:rallytics/app/theme/theme_cubit/theme_cubit.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:rallytics/features/auth/presentation/bloc/auth_event.dart';
import 'package:rallytics/features/dashboard/presentation/widgets/feature_tile.dart';
import 'package:rallytics/generated/l10n.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double tileWidth = (screenWidth / 2) - 20;

    final String? userEmail = context.read<AuthBloc>().state.maybeMap(
      authenticated: (user) => user.user.email,
      orElse: () => null,
    );

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).appTitle), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              child: Center(
                child: Text(
                  S.of(context).appTitle,
                  style: textTheme.displaySmall,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
                vertical: 8.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(S.of(context).drawerTheme, style: textTheme.titleMedium),
                  BlocBuilder<ThemeCubit, ThemeMode>(
                    builder: (context, currentMode) {
                      return Switch(
                        value: currentMode == ThemeMode.dark,
                        onChanged: (isDarkMode) {
                          context.read<ThemeCubit>().toggleTheme(isDarkMode);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(
                S.of(context).drawerAbout,
                style: textTheme.bodyLarge,
              ),
              // TODO: Implement navigation to about screen
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(FontAwesomeIcons.handHoldingHeart),
              title: Text(
                S.of(context).drawerSupport,
                style: textTheme.bodyLarge,
              ),
              // TODO: Implement navigation to support screen
              onTap: () {
                Navigator.pop(context);
              },
            ),

            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: AppColors.error),
              title: Text(
                S.of(context).drawerLogout,
                style: textTheme.bodyLarge?.copyWith(color: AppColors.error),
              ),
              onTap: () {
                Navigator.pop(context);
                context.read<AuthBloc>().add(
                  const AuthEvent.signOutRequested(),
                );
              },
            ),
          ],
        ),
      ),
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
