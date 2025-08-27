import 'package:flutter/material.dart';
import 'package:rallytics/generated/l10n.dart';

class CustomReadMoreBox extends StatefulWidget {
  const CustomReadMoreBox({
    super.key,
    required this.title,
    required this.content,
  });

  final String title;
  final String content;

  @override
  State<CustomReadMoreBox> createState() => _CustomReadMoreBoxState();
}

class _CustomReadMoreBoxState extends State<CustomReadMoreBox> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: textTheme.bodyLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.all(8),
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    onPressed: () {
                      setState(() {
                        _isExpanded = !_isExpanded;
                      });
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _isExpanded
                              ? S.of(context).showLessButton
                              : S.of(context).readMoreButton,
                          style: textTheme.bodySmall,
                        ),
                        const SizedBox(width: 4),
                        RotationTransition(
                          turns: _isExpanded
                              ? const AlwaysStoppedAnimation(0.5)
                              : const AlwaysStoppedAnimation(0.0),
                          child: const Icon(Icons.keyboard_arrow_down),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          AnimatedSize(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child: SizedBox(
              width: double.infinity,
              child: _isExpanded
                  ? Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                      child: Text(
                        widget.content,
                        textAlign: TextAlign.justify,
                        style: textTheme.bodyMedium,
                      ),
                    )
                  : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    );
  }
}
