import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/game_rules_dialog.dart';
import '../../../../core/widgets/size_selector.dart';

class SchulteSizePage extends StatelessWidget {
  const SchulteSizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeSelector(
      title: context.appLocale.schulteTitle,
      options: [
        SizeOption(rows: 3, cols: 6, label: context.appLocale.easy),
        SizeOption(rows: 4, cols: 8, label: '${context.appLocale.easy}+'),
        SizeOption(rows: 5, cols: 9, label: context.appLocale.medium),
        SizeOption(rows: 6, cols: 10, label: context.appLocale.hard),
        SizeOption(rows: 7, cols: 12, label: context.appLocale.expert),
      ],
      onSelected: (option) {
        GameRulesDialog.show(
          context,
          title: context.appLocale.schulteTitle,
          rules: context.appLocale.schulteRules,
          onStart: () {
            context.go(AppRouter.schulteGame, extra: {'rows': option.rows, 'cols': option.cols});
          },
        );
      },
    );
  }
}
