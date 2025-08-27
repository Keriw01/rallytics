import 'package:flutter/material.dart';

class AuthRedirectWidget extends StatelessWidget {
  const AuthRedirectWidget({
    super.key,
    required this.promptText,
    required this.buttonText,
    required this.onPressed,
  });

  final String promptText;
  final String buttonText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(child: Text(promptText, style: textTheme.bodyMedium)),
        SizedBox(width: 4),
        TextButton(onPressed: onPressed, child: Text(buttonText)),
      ],
    );
  }
}
