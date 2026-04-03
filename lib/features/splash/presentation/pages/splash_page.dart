import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_training/core/constants/images_constants.dart';
import 'package:memory_training/core/router/app_router.dart';
import 'package:memory_training/core/utils/orientation_helper.dart';

import '../../../../core/extensions/context_extensions.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with PortraitModeMixin {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  Future<void> _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    if (mounted) {
      context.go(AppRouter.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.black,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(ImagesConstants.splash, fit: BoxFit.fitWidth,),
          Positioned(
            bottom: 50,
            left: 50,
            right: 50,
            child: LinearProgressIndicator(
              backgroundColor: context.colors.surface,
              valueColor: AlwaysStoppedAnimation<Color>(context.colors.primary),
              borderRadius: BorderRadius.circular(10),
              minHeight: 4,
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
          ),
        ],
      ),
    );
  }
}
