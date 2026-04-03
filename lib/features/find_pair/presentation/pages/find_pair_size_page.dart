import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/extensions/context_extensions.dart';
import '../../../../core/router/app_router.dart';
import '../../../../core/widgets/game_rules_dialog.dart';
import '../../../../core/widgets/size_selector.dart';

class FindPairSizePage extends StatelessWidget {
  const FindPairSizePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizeSelector(
      title: context.appLocale.findPairTitle,
      options: [
        SizeOption(rows: 2, cols: 4, label: context.appLocale.easy),
        SizeOption(rows: 3, cols: 4, label: context.appLocale.medium),
        SizeOption(rows: 4, cols: 4, label: context.appLocale.hard),
        SizeOption(rows: 4, cols: 6, label: context.appLocale.expert),
      ],
      onSelected: (option) {
        GameRulesDialog.show(
          context,
          title: context.appLocale.findPairTitle,
          rules: context.appLocale.findPairRules,
          onStart: () {
            context.go(
              AppRouter.findPairGame,
              extra: {'rows': option.rows, 'cols': option.cols},
            );
          },
        );
      },
    );
  }
}
