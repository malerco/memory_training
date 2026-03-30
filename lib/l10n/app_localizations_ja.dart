// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appName => '記憶トレーニング';

  @override
  String get home => 'ホーム';

  @override
  String get settings => '設定';

  @override
  String get records => '記録';

  @override
  String get language => '言語';

  @override
  String get backgroundColor => '背景色';

  @override
  String get selectLanguage => '言語を選択';

  @override
  String get selectBackground => '背景を選択';

  @override
  String get english => '英語';

  @override
  String get russian => 'ロシア語';

  @override
  String get spanish => 'スペイン語';

  @override
  String get french => 'フランス語';

  @override
  String get german => 'ドイツ語';

  @override
  String get chinese => '中国語';

  @override
  String get japanese => '日本語';

  @override
  String get korean => '韓国語';

  @override
  String get portuguese => 'ポルトガル語';

  @override
  String get italian => 'イタリア語';

  @override
  String get arabic => 'アラビア語';

  @override
  String get hindi => 'ヒンディー語';

  @override
  String get turkish => 'トルコ語';

  @override
  String get start => 'スタート';

  @override
  String get selectSize => 'サイズを選択';

  @override
  String get time => '時間';

  @override
  String get mistakes => 'ミス';

  @override
  String get score => 'スコア';

  @override
  String get bestTime => 'ベストタイム';

  @override
  String get congratulations => 'おめでとうございます！';

  @override
  String get tryAgain => 'もう一度';

  @override
  String get backToMenu => 'メニューへ戻る';

  @override
  String get memorize => 'パターンを覚える';

  @override
  String get reproduce => 'パターンを再現';

  @override
  String get correct => '正解！';

  @override
  String get incorrect => '不正解！';

  @override
  String get gameOver => 'ゲームオーバー';

  @override
  String get level => 'レベル';

  @override
  String get nextLevel => '次のレベル';

  @override
  String get pause => '一時停止';

  @override
  String get resume => '再開';

  @override
  String get restart => 'やり直し';

  @override
  String get exit => '終了';

  @override
  String get cancel => 'キャンセル';

  @override
  String get confirm => '確認';

  @override
  String get noRecords => '記録なし';

  @override
  String get seconds => '秒';

  @override
  String get round => 'ラウンド';

  @override
  String get remaining => '残り';

  @override
  String get easy => '簡単';

  @override
  String get medium => '普通';

  @override
  String get hard => '難しい';

  @override
  String get expert => 'エキスパート';

  @override
  String get rules => 'ルール';

  @override
  String get gotIt => 'わかった！';

  @override
  String get repeatPatternTitle => 'パターンを繰り返す';

  @override
  String get repeatPatternDescription => '接続パターンを覚えて再現';

  @override
  String get repeatPatternRules =>
      '1. 点と点の接続を覚える\n2. 各点は1つの接続のみ\n3. 同じパターンを正確に再現\n4. 点の間をタップして接続\n5. できるだけ早く完了';

  @override
  String get schulteTitle => 'シュルテテーブル';

  @override
  String get schulteDescription => '順番に数字を見つける';

  @override
  String get schulteRules =>
      '1. 順番に数字を見つけてタップ：1, 2, 3...\n2. 見つけた数字は見た目が変わらない\n3. 間違いはミスとしてカウント\n4. できるだけ早く完了\n5. 周辺視野を鍛える';

  @override
  String get gorbovTitle => 'ゴルボフ・シュルテ';

  @override
  String get gorbovDescription => '黒↑と赤↓を交互に';

  @override
  String get gorbovRules =>
      '1. 黒と赤の数字を交互にタップ\n2. 黒：昇順（1, 2, 3...）\n3. 赤：降順（最大, 最大-1...）\n4. 順序：黒1 → 赤最大 → 黒2...\n5. 数字は変化しない';

  @override
  String get memoryMatrixTitle => '記憶マトリックス';

  @override
  String get memoryMatrixDescription => 'セルの位置を覚えて再現';

  @override
  String get memoryMatrixRules =>
      '1. ハイライトされたセルを覚える\n2. 消えた後、同じセルをタップ\n3. 各ラウンドでセルが増加\n4. ミスはカウントされる\n5. 全ラウンドクリアで勝利';

  @override
  String get findPairTitle => 'ペア探し';

  @override
  String get findPairDescription => '同じカードをマッチ';

  @override
  String get findPairRules =>
      '1. プレビュー中にカードの位置を覚える\n2. 2枚のカードをタップして裏返す\n3. 一致すれば表示されたまま\n4. 不一致なら裏返る\n5. できるだけ早くペアを見つける';

  @override
  String get nBackTitle => 'Nバック';

  @override
  String get nBackDescription => 'N歩前の位置を覚える';

  @override
  String get nBackRules =>
      '1. グリッド上で四角が光る\n2. 現在の位置がN歩前と同じか判断\n3. 同じなら「はい」を押す、違えば待つ\n4. Nレベルが記憶するステップ数を決定\n5. Nが大きいほど難しい';

  @override
  String get sequenceMemory => 'シーケンス記憶';

  @override
  String get sequenceMemoryDescription => 'シーケンスを覚えて繰り返す';

  @override
  String get sequenceMemoryRules =>
      '1. 光る四角のシーケンスを見る\n2. 同じ順序でタップして繰り返す\n3. 各レベルで四角が1つ追加\n4. 1回のミスでゲーム終了\n5. どこまで行ける？';

  @override
  String get selectLevel => 'レベル選択';

  @override
  String get accuracy => '正確度';

  @override
  String get match => '一致？';

  @override
  String get yes => 'はい';

  @override
  String get getReady => '準備';

  @override
  String get yourTurn => 'あなたの番';

  @override
  String get wrong => '不正解！';

  @override
  String get completed => '完了！';

  @override
  String get sequenceLength => 'シーケンス';
}
