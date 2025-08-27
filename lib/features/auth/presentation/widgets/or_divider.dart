import 'package:flutter/material.dart';
import 'package:rallytics/generated/l10n.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    final screenWidth = MediaQuery.of(context).size.width;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container(height: 1, color: colorScheme.onSurface)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Text(S.of(context).orConnectWith, style: textTheme.bodyMedium),
        ),
        Expanded(child: Container(height: 1, color: colorScheme.onSurface)),
      ],
    );
  }
}
