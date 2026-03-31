import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/game_rules_dialog.dart';
import '../../../../core/widgets/size_selector.dart';

class RepeatPatternSizePage extends StatelessWidget {
  const RepeatPatternSizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeSelector(
      title: context.appLocale.repeatPatternTitle,
      options: [
        SizeOption(rows: 3, cols: 4, label: context.appLocale.easy),
        SizeOption(rows: 4, cols: 5, label: context.appLocale.medium),
        SizeOption(rows: 5, cols: 6, label: context.appLocale.hard),
        SizeOption(rows: 6, cols: 8, label: context.appLocale.expert),
      ],
      onSelected: (option) {
        GameRulesDialog.show(
          context,
          title: context.appLocale.repeatPatternTitle,
          rules: context.appLocale.repeatPatternRules,
          onStart: () {
            context.go(
              AppRouter.repeatPatternGame,
              extra: {'rows': option.rows, 'cols': option.cols},
            );
          },
        );
      },
    );
  }
}
