import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../extensions/context_extensions.dart';

class GameAppBar extends StatelessWidget {
  final VoidCallback? onRestart;
  final VoidCallback? onMenu;
  final Widget? trailing;

  const GameAppBar({
    super.key,
    this.onRestart,
    this.onMenu,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _ActionButton(
          icon: Icons.menu_rounded,
          onTap: onMenu ?? () => context.go('/home'),
        ),
        const SizedBox(width: 12),
        if (onRestart != null)
          _ActionButton(
            icon: Icons.refresh_rounded,
            onTap: onRestart!,
          ),
        const Spacer(),
        if (trailing != null) trailing!,
      ],
    );
  }
}

class _ActionButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;

  const _ActionButton({
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: context.colors.surface,
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          width: 48,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: context.colors.primary.withOpacity(0.3),
              width: 2,
            ),
          ),
          child: Icon(
            icon,
            color: context.colors.primary,
            size: 24,
          ),
        ),
      ),
    );
  }
}
