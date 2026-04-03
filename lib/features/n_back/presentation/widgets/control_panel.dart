import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../bloc/n_back_bloc.dart';

class ControlPanel extends StatelessWidget {
  final NBackState state;

  const ControlPanel({required this.state});

  @override
  Widget build(BuildContext context) {
    final canRespond = state.phase == NBackPhase.waiting || state.phase == NBackPhase.showing;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (state.lastFeedback != null)
          Icon(
            state.lastFeedback! ? Icons.check_circle : Icons.cancel,
            color: state.lastFeedback! ? context.colors.success : context.colors.error,
            size: 48,
          ).animate().scale(
            begin: const Offset(0.5, 0.5),
            duration: const Duration(milliseconds: 200),
          ),
        const SizedBox(height: 24),
        Text(
          context.appLocale.match,
          style: context.textStyles.bodyMedium?.copyWith(
            color: context.colors.textSecondary,
          ),
        ),
        const SizedBox(height: 12),
        SizedBox(
          width: 120,
          height: 56,
          child: ElevatedButton(
            onPressed: canRespond
                ? () {
              context.read<NBackBloc>().add(const NBackEvent.userResponse(true));
            }
                : null,
            style: ElevatedButton.styleFrom(
              backgroundColor: context.colors.success,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Text(
              context.appLocale.yes,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}