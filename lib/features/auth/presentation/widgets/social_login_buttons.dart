import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    super.key,
    required this.onFacebookPressed,
    required this.onGitHubPressed,
    required this.onGooglePressed,
  });

  final VoidCallback onFacebookPressed;
  final VoidCallback onGitHubPressed;
  final VoidCallback onGooglePressed;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: onGooglePressed,
            icon: const Icon(FontAwesomeIcons.google, size: 36),
          ),

          SizedBox(width: screenHeight * 0.01),
          IconButton(
            onPressed: onGitHubPressed,
            icon: const Icon(FontAwesomeIcons.github, size: 36),
          ),
          SizedBox(width: screenHeight * 0.01),
          IconButton(
            onPressed: onFacebookPressed,
            icon: const Icon(FontAwesomeIcons.facebook, size: 36),
          ),
        ],
      ),
    );
  }
}
