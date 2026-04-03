import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';

class LivesDisplay extends StatelessWidget {
  final int lives;

  const LivesDisplay({required this.lives});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) {
        return Icon(
          index < lives ? Icons.favorite : Icons.favorite_border,
          color: context.colors.error,
          size: 28,
        );
      }),
    );
  }
}
