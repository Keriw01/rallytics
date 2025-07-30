import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({
    super.key,
    required this.onFacebookPressed,
    required this.onTwitterPressed,
    required this.onGooglePressed,
    required this.onApplePressed,
  });

  final VoidCallback onFacebookPressed;
  final VoidCallback onTwitterPressed;
  final VoidCallback onGooglePressed;
  final VoidCallback onApplePressed;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () => onFacebookPressed,
            icon: const Icon(FontAwesomeIcons.facebook, size: 36),
          ),
          SizedBox(width: screenHeight * 0.01),
          IconButton(
            onPressed: () => onTwitterPressed,
            icon: const Icon(FontAwesomeIcons.xTwitter, size: 36),
          ),
          SizedBox(width: screenHeight * 0.01),
          IconButton(
            onPressed: () => onGooglePressed,
            icon: const Icon(FontAwesomeIcons.google, size: 36),
          ),
          SizedBox(width: screenHeight * 0.01),
          IconButton(
            onPressed: () => onApplePressed,
            icon: const Icon(FontAwesomeIcons.apple, size: 36),
          ),
        ],
      ),
    );
  }
}
