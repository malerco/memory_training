// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appName => 'Memory Training';

  @override
  String get home => 'Home';

  @override
  String get settings => 'Settings';

  @override
  String get records => 'Records';

  @override
  String get language => 'Language';

  @override
  String get backgroundColor => 'Background Color';

  @override
  String get selectLanguage => 'Select Language';

  @override
  String get selectBackground => 'Select Background';

  @override
  String get english => 'English';

  @override
  String get russian => 'Russian';

  @override
  String get spanish => 'Spanish';

  @override
  String get french => 'French';

  @override
  String get german => 'German';

  @override
  String get chinese => 'Chinese';

  @override
  String get japanese => 'Japanese';

  @override
  String get korean => 'Korean';

  @override
  String get portuguese => 'Portuguese';

  @override
  String get italian => 'Italian';

  @override
  String get arabic => 'Arabic';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turkish';

  @override
  String get start => 'Start';

  @override
  String get selectSize => 'Select Grid Size';

  @override
  String get time => 'Time';

  @override
  String get mistakes => 'Mistakes';

  @override
  String get score => 'Score';

  @override
  String get bestTime => 'Best Time';

  @override
  String get congratulations => 'Congratulations!';

  @override
  String get tryAgain => 'Try Again';

  @override
  String get backToMenu => 'Back to Menu';

  @override
  String get memorize => 'Memorize the pattern';

  @override
  String get reproduce => 'Reproduce the pattern';

  @override
  String get correct => 'Correct!';

  @override
  String get incorrect => 'Incorrect!';

  @override
  String get gameOver => 'Game Over';

  @override
  String get level => 'Level';

  @override
  String get nextLevel => 'Next Level';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Resume';

  @override
  String get restart => 'Restart';

  @override
  String get exit => 'Exit';

  @override
  String get cancel => 'Cancel';

  @override
  String get confirm => 'Confirm';

  @override
  String get noRecords => 'No records yet';

  @override
  String get seconds => 's';

  @override
  String get round => 'Round';

  @override
  String get remaining => 'Remaining';

  @override
  String get easy => 'Easy';

  @override
  String get medium => 'Medium';

  @override
  String get hard => 'Hard';

  @override
  String get expert => 'Expert';

  @override
  String get rules => 'Rules';

  @override
  String get gotIt => 'Got it!';

  @override
  String get repeatPatternTitle => 'Repeat Pattern';

  @override
  String get repeatPatternDescription =>
      'Memorize and reproduce the connection pattern';

  @override
  String get repeatPatternRules =>
      '1. Memorize the connections between dots\n2. Each dot can only have ONE connection\n3. Reproduce the exact same pattern\n4. Tap between dots to create connections\n5. Complete as fast as possible';

  @override
  String get schulteTitle => 'Schulte Table';

  @override
  String get schulteDescription => 'Find numbers in ascending order';

  @override
  String get schulteRules =>
      '1. Find and tap numbers in order: 1, 2, 3...\n2. Numbers won\'t change appearance when found\n3. Wrong taps count as mistakes\n4. Complete as fast as possible\n5. Trains peripheral vision and attention';

  @override
  String get gorbovTitle => 'Gorbov-Schulte';

  @override
  String get gorbovDescription => 'Alternating black ascending, red descending';

  @override
  String get gorbovRules =>
      '1. Alternate between BLACK and RED numbers\n2. BLACK: tap in ascending order (1, 2, 3...)\n3. RED: tap in descending order (max, max-1...)\n4. Sequence: Black 1 → Red max → Black 2 → Red max-1...\n5. Numbers won\'t change when found';

  @override
  String get memoryMatrixTitle => 'Memory Matrix';

  @override
  String get memoryMatrixDescription => 'Remember and reproduce cell positions';

  @override
  String get memoryMatrixRules =>
      '1. Memorize the highlighted cells\n2. After the pattern disappears, tap the same cells\n3. Each round adds more cells to remember\n4. Wrong taps count as mistakes\n5. Complete all rounds to win';

  @override
  String get findPairTitle => 'Find Pair';

  @override
  String get findPairDescription => 'Match pairs of cards';

  @override
  String get findPairRules =>
      '1. Memorize card positions during preview\n2. Tap two cards to flip them\n3. If they match, they stay revealed\n4. If not, they flip back\n5. Find all pairs as fast as possible';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription => 'Remember positions N steps back';

  @override
  String get nBackRules =>
      '1. A square lights up on the grid\n2. Remember if the CURRENT position matches the one N steps ago\n3. Press \'Yes\' if it matches, or wait if it doesn\'t\n4. N-Back level determines how many steps to remember\n5. Higher N = harder challenge';

  @override
  String get sequenceMemory => 'Sequence Memory';

  @override
  String get sequenceMemoryDescription => 'Remember and repeat sequences';

  @override
  String get sequenceMemoryRules =>
      '1. Watch the sequence of lit squares\n2. Repeat the sequence by tapping in the same order\n3. Each level adds one more square to remember\n4. One mistake ends the game\n5. How far can you go?';

  @override
  String get selectLevel => 'Select Level';

  @override
  String get accuracy => 'Accuracy';

  @override
  String get match => 'Match?';

  @override
  String get yes => 'Yes';

  @override
  String get getReady => 'Get Ready';

  @override
  String get yourTurn => 'Your Turn';

  @override
  String get wrong => 'Wrong!';

  @override
  String get completed => 'Completed!';

  @override
  String get sequenceLength => 'Sequence';

  @override
  String get chimpTestTitle => 'Chimp Test';

  @override
  String get chimpTestDescription =>
      'Remember number positions and tap in order';

  @override
  String get chimpTestRules =>
      '1. Numbers appear on the grid briefly\n2. After they hide, tap them in ascending order (1, 2, 3...)\n3. Each round adds one more number\n4. One wrong tap ends the game\n5. Based on research where chimps outperformed humans';

  @override
  String get tapNumber => 'Tap number';

  @override
  String get pictureMemoryTitle => 'Picture Memory';

  @override
  String get pictureMemoryDescription =>
      'Remember which pictures you have seen';

  @override
  String get pictureMemoryRules =>
      '1. Pictures appear one at a time\n2. Decide if you\'ve seen this picture before\n3. Tap \'New\' if it\'s the first time\n4. Tap \'Seen\' if you\'ve seen it before\n5. You have 3 lives - don\'t make mistakes!';

  @override
  String get haveYouSeenThis => 'Have you seen this?';

  @override
  String get newPicture => 'New';

  @override
  String get seenBefore => 'Seen';

  @override
  String get objectLocationTitle => 'Object Location';

  @override
  String get objectLocationDescription => 'Remember where objects were placed';

  @override
  String get objectLocationRules =>
      '1. Memorize the positions of objects on the grid\n2. After they disappear, place them back\n3. Tap cells to place objects in order\n4. Each round adds more objects\n5. Place all correctly to advance';

  @override
  String get placeObjects => 'Place objects in their positions';
}
