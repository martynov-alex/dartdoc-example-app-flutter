import 'package:flutter/material.dart';

/// Виджет с иконкой.
class IconWidget extends StatelessWidget {
  /// @nodoc
  const IconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Icon(Icons.surfing, color: Colors.blue, size: 100);
  }
}
