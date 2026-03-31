import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_training/features/home/domain/entities/training_model.dart';

import '../../../../core/extensions/context_extensions.dart';

class TrainingCard extends StatefulWidget {
  const TrainingCard({super.key, required this.data});

  final TrainingModel data;

  @override
  State<TrainingCard> createState() => _TrainingCardState();
}

class _TrainingCardState extends State<TrainingCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(widget.data.route),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        transform: Matrix4.identity()
          ..scale(_isHovered ? 1.02 : 1.0),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              widget.data.gradient[0].withOpacity(_isHovered ? 0.3 : 0.2),
              widget.data.gradient[1].withOpacity(_isHovered ? 0.2 : 0.1),
            ],
          ),
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: widget.data.gradient[0].withOpacity(_isHovered ? 0.5 : 0.3),
            width: 2,
          ),
          boxShadow: _isHovered
              ? [
            BoxShadow(
              color: widget.data.gradient[0].withOpacity(0.3),
              blurRadius: 20,
              spreadRadius: 2,
            ),
          ]
              : null,
        ),
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: widget.data.gradient,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(
                    widget.data.icon,
                    color: Colors.white,
                    size: 20,
                  ),
                ),
                const Spacer(),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: widget.data.gradient[0],
                  size: 20,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    widget.data.title,
                    style: context.textStyles.titleMedium?.copyWith(
                      color: context.colors.textPrimary,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    widget.data.description,
                    style: context.textStyles.bodySmall?.copyWith(
                      color: context.colors.textSecondary,
                      fontSize: 11,
                    ),

                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
