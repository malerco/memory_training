import 'package:flutter/material.dart';

import '../../../../core/extensions/context_extensions.dart';

class ConnectionWidget extends StatelessWidget {
  final double width;
  final double height;
  final bool isActive;
  final bool isInteractive;
  final VoidCallback? onTap;

  const ConnectionWidget({
    required this.width,
    required this.height,
    required this.isActive,
    required this.isInteractive,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isActive
              ? context.colors.connectionColor
              : context.colors.surfaceLight.withOpacity(0.5) ,
          // borderRadius: BorderRadius.circular(height > width ? width / 2 : height / 2),

        ),
      ),
    );
  }
}

