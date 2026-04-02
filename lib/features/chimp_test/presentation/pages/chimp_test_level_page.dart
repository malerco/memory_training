import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/utils/orientation_helper.dart';
import '../../../../core/widgets/game_app_bar.dart';
import '../../../../core/widgets/game_rules_dialog.dart';
import '../../../../core/widgets/size_selector.dart';

class ChimpTestLevelPage extends StatefulWidget {
  const ChimpTestLevelPage({super.key});

  @override
  State<ChimpTestLevelPage> createState() => _ChimpTestLevelPageState();
}

class _ChimpTestLevelPageState extends State<ChimpTestLevelPage> with PortraitModeMixin {
  @override
  Widget build(BuildContext context) {
    return SizeSelector(
      title: context.appLocale.chimpTestTitle,
      options:  [
        SizeOption(rows: 4, cols: 4, label: context.appLocale.easy),
        SizeOption(rows: 5, cols: 5, label: context.appLocale.medium),
        SizeOption(rows: 6, cols: 6, label: context.appLocale.hard),
        SizeOption(rows: 7, cols: 7, label: context.appLocale.expert),
      ],
      onSelected: (option) {
        GameRulesDialog.show(
          context,
          title: context.appLocale.chimpTestTitle,
          rules: context.appLocale.chimpTestRules,
          onStart: () {
            context.go(
              AppRouter.chimpTestGame,
              extra: {'size': option.rows},
            );
          },
        );
      },
    );
  }
}