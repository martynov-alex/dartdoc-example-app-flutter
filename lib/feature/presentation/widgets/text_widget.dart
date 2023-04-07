import 'package:flutter/material.dart';

/// Текстовый виджет.
class TextWidget extends StatelessWidget {
  /// @nodoc.
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Work to surf, surf to work!',
      style: TextStyle(
        fontSize: 20,
      ),
    );
  }
}
