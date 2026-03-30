import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    if (mounted) {
      context.go('/home');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            center: Alignment.center,
            radius: 1.5,
            colors: [
              context.colors.primaryDark.withOpacity(0.3),
              context.colors.background,
            ],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Brain Icon with animation
              Container(
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: context.colors.primaryGradient,
                  boxShadow: [
                    BoxShadow(
                      color: context.colors.primary.withOpacity(0.4),
                      blurRadius: 30,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.psychology_rounded,
                  size: 64,
                  color: Colors.white,
                ),
              )
                  .animate()
                  .fadeIn(duration: const Duration(milliseconds: 600))
                  .scale(
                    begin: const Offset(0.5, 0.5),
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeOutBack,
                  )
                  .then()
                  .shimmer(
                    duration: const Duration(milliseconds: 1500),
                    color: Colors.white.withOpacity(0.3),
                  ),
              const SizedBox(height: 40),
              // App Title
              Text(
                'Memory',
                style: context.textStyles.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              )
                  .animate()
                  .fadeIn(
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 600),
                  )
                  .slideX(
                    begin: -0.3,
                    delay: const Duration(milliseconds: 400),
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeOut,
                  ),
              Text(
                'Training',
                style: context.textStyles.displaySmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: context.colors.primary,
                  letterSpacing: 2,
                ),
              )
                  .animate()
                  .fadeIn(
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                  )
                  .slideX(
                    begin: 0.3,
                    delay: const Duration(milliseconds: 600),
                    duration: const Duration(milliseconds: 600),
                    curve: Curves.easeOut,
                  ),
              const SizedBox(height: 60),
              // Loading indicator
              SizedBox(
                width: 200,
                child: LinearProgressIndicator(
                  backgroundColor: context.colors.surface,
                  valueColor: AlwaysStoppedAnimation<Color>(context.colors.primary),
                  borderRadius: BorderRadius.circular(10),
                  minHeight: 4,
                ),
              )
                  .animate()
                  .fadeIn(
                    delay: const Duration(milliseconds: 1000),
                    duration: const Duration(milliseconds: 400),
                  )
                  .shimmer(
                    delay: const Duration(milliseconds: 1200),
                    duration: const Duration(milliseconds: 1500),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
