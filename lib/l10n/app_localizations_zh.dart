// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appName => '记忆训练';

  @override
  String get home => '首页';

  @override
  String get settings => '设置';

  @override
  String get records => '记录';

  @override
  String get language => '语言';

  @override
  String get backgroundColor => '背景颜色';

  @override
  String get selectLanguage => '选择语言';

  @override
  String get selectBackground => '选择背景';

  @override
  String get english => '英语';

  @override
  String get russian => '俄语';

  @override
  String get spanish => '西班牙语';

  @override
  String get french => '法语';

  @override
  String get german => '德语';

  @override
  String get chinese => '中文';

  @override
  String get japanese => '日语';

  @override
  String get korean => '韩语';

  @override
  String get portuguese => '葡萄牙语';

  @override
  String get italian => '意大利语';

  @override
  String get arabic => '阿拉伯语';

  @override
  String get hindi => '印地语';

  @override
  String get turkish => '土耳其语';

  @override
  String get start => '开始';

  @override
  String get selectSize => '选择大小';

  @override
  String get time => '时间';

  @override
  String get mistakes => '错误';

  @override
  String get score => '分数';

  @override
  String get bestTime => '最佳时间';

  @override
  String get congratulations => '恭喜！';

  @override
  String get tryAgain => '再试一次';

  @override
  String get backToMenu => '返回菜单';

  @override
  String get memorize => '记住图案';

  @override
  String get reproduce => '重现图案';

  @override
  String get correct => '正确！';

  @override
  String get incorrect => '错误！';

  @override
  String get gameOver => '游戏结束';

  @override
  String get level => '级别';

  @override
  String get nextLevel => '下一级';

  @override
  String get pause => '暂停';

  @override
  String get resume => '继续';

  @override
  String get restart => '重新开始';

  @override
  String get exit => '退出';

  @override
  String get cancel => '取消';

  @override
  String get confirm => '确认';

  @override
  String get noRecords => '暂无记录';

  @override
  String get seconds => '秒';

  @override
  String get round => '回合';

  @override
  String get remaining => '剩余';

  @override
  String get easy => '简单';

  @override
  String get medium => '中等';

  @override
  String get hard => '困难';

  @override
  String get expert => '专家';

  @override
  String get rules => '规则';

  @override
  String get gotIt => '明白了！';

  @override
  String get repeatPatternTitle => '重复图案';

  @override
  String get repeatPatternDescription => '记忆并重现连接图案';

  @override
  String get repeatPatternRules =>
      '1. 记住点之间的连接\n2. 每个点只能有一个连接\n3. 准确重现相同的图案\n4. 点击点之间创建连接\n5. 尽快完成';

  @override
  String get schulteTitle => '舒尔特表';

  @override
  String get schulteDescription => '按顺序找到数字';

  @override
  String get schulteRules =>
      '1. 按顺序找到并点击数字：1, 2, 3...\n2. 找到的数字不会改变外观\n3. 错误点击计为失误\n4. 尽快完成\n5. 训练周边视觉';

  @override
  String get gorbovTitle => '戈尔博夫-舒尔特';

  @override
  String get gorbovDescription => '交替黑色↑，红色↓';

  @override
  String get gorbovRules =>
      '1. 交替点击黑色和红色数字\n2. 黑色：升序点击（1, 2, 3...）\n3. 红色：降序点击（最大, 最大-1...）\n4. 顺序：黑1 → 红最大 → 黑2...\n5. 数字不会改变';

  @override
  String get memoryMatrixTitle => '记忆矩阵';

  @override
  String get memoryMatrixDescription => '记住并重现单元格位置';

  @override
  String get memoryMatrixRules =>
      '1. 记住高亮的单元格\n2. 消失后点击相同的单元格\n3. 每轮增加更多单元格\n4. 错误会被计数\n5. 完成所有轮次获胜';

  @override
  String get findPairTitle => '找对子';

  @override
  String get findPairDescription => '匹配相同的卡片';

  @override
  String get findPairRules =>
      '1. 预览时记住卡片位置\n2. 点击两张卡片翻转\n3. 匹配的卡片保持可见\n4. 不匹配则翻回去\n5. 尽快找到所有配对';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription => '记住N步前的位置';

  @override
  String get nBackRules =>
      '1. 方块在网格上亮起\n2. 判断当前位置是否与N步前相同\n3. 相同按\'是\'，否则等待\n4. N级别决定需要记住多少步\n5. N越大越难';

  @override
  String get sequenceMemory => '序列记忆';

  @override
  String get sequenceMemoryDescription => '记住并重复序列';

  @override
  String get sequenceMemoryRules =>
      '1. 观察亮起的方块序列\n2. 按相同顺序点击重复\n3. 每级增加一个方块\n4. 一次错误结束游戏\n5. 你能走多远？';

  @override
  String get selectLevel => '选择级别';

  @override
  String get accuracy => '准确率';

  @override
  String get match => '匹配？';

  @override
  String get yes => '是';

  @override
  String get getReady => '准备';

  @override
  String get yourTurn => '轮到你';

  @override
  String get wrong => '错误！';

  @override
  String get completed => '完成！';

  @override
  String get sequenceLength => '序列';
}
