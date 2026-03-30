import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('pt'),
    Locale('ru'),
    Locale('tr'),
    Locale('zh'),
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'Memory Training'**
  String get appName;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @records.
  ///
  /// In en, this message translates to:
  /// **'Records'**
  String get records;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @backgroundColor.
  ///
  /// In en, this message translates to:
  /// **'Background Color'**
  String get backgroundColor;

  /// No description provided for @selectLanguage.
  ///
  /// In en, this message translates to:
  /// **'Select Language'**
  String get selectLanguage;

  /// No description provided for @selectBackground.
  ///
  /// In en, this message translates to:
  /// **'Select Background'**
  String get selectBackground;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @russian.
  ///
  /// In en, this message translates to:
  /// **'Russian'**
  String get russian;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @french.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// No description provided for @german.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// No description provided for @chinese.
  ///
  /// In en, this message translates to:
  /// **'Chinese'**
  String get chinese;

  /// No description provided for @japanese.
  ///
  /// In en, this message translates to:
  /// **'Japanese'**
  String get japanese;

  /// No description provided for @korean.
  ///
  /// In en, this message translates to:
  /// **'Korean'**
  String get korean;

  /// No description provided for @portuguese.
  ///
  /// In en, this message translates to:
  /// **'Portuguese'**
  String get portuguese;

  /// No description provided for @italian.
  ///
  /// In en, this message translates to:
  /// **'Italian'**
  String get italian;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @hindi.
  ///
  /// In en, this message translates to:
  /// **'Hindi'**
  String get hindi;

  /// No description provided for @turkish.
  ///
  /// In en, this message translates to:
  /// **'Turkish'**
  String get turkish;

  /// No description provided for @start.
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// No description provided for @selectSize.
  ///
  /// In en, this message translates to:
  /// **'Select Grid Size'**
  String get selectSize;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @mistakes.
  ///
  /// In en, this message translates to:
  /// **'Mistakes'**
  String get mistakes;

  /// No description provided for @score.
  ///
  /// In en, this message translates to:
  /// **'Score'**
  String get score;

  /// No description provided for @bestTime.
  ///
  /// In en, this message translates to:
  /// **'Best Time'**
  String get bestTime;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations!'**
  String get congratulations;

  /// No description provided for @tryAgain.
  ///
  /// In en, this message translates to:
  /// **'Try Again'**
  String get tryAgain;

  /// No description provided for @backToMenu.
  ///
  /// In en, this message translates to:
  /// **'Back to Menu'**
  String get backToMenu;

  /// No description provided for @memorize.
  ///
  /// In en, this message translates to:
  /// **'Memorize the pattern'**
  String get memorize;

  /// No description provided for @reproduce.
  ///
  /// In en, this message translates to:
  /// **'Reproduce the pattern'**
  String get reproduce;

  /// No description provided for @correct.
  ///
  /// In en, this message translates to:
  /// **'Correct!'**
  String get correct;

  /// No description provided for @incorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect!'**
  String get incorrect;

  /// No description provided for @gameOver.
  ///
  /// In en, this message translates to:
  /// **'Game Over'**
  String get gameOver;

  /// No description provided for @level.
  ///
  /// In en, this message translates to:
  /// **'Level'**
  String get level;

  /// No description provided for @nextLevel.
  ///
  /// In en, this message translates to:
  /// **'Next Level'**
  String get nextLevel;

  /// No description provided for @pause.
  ///
  /// In en, this message translates to:
  /// **'Pause'**
  String get pause;

  /// No description provided for @resume.
  ///
  /// In en, this message translates to:
  /// **'Resume'**
  String get resume;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @exit.
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @noRecords.
  ///
  /// In en, this message translates to:
  /// **'No records yet'**
  String get noRecords;

  /// No description provided for @seconds.
  ///
  /// In en, this message translates to:
  /// **'s'**
  String get seconds;

  /// No description provided for @round.
  ///
  /// In en, this message translates to:
  /// **'Round'**
  String get round;

  /// No description provided for @remaining.
  ///
  /// In en, this message translates to:
  /// **'Remaining'**
  String get remaining;

  /// No description provided for @easy.
  ///
  /// In en, this message translates to:
  /// **'Easy'**
  String get easy;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @hard.
  ///
  /// In en, this message translates to:
  /// **'Hard'**
  String get hard;

  /// No description provided for @expert.
  ///
  /// In en, this message translates to:
  /// **'Expert'**
  String get expert;

  /// No description provided for @rules.
  ///
  /// In en, this message translates to:
  /// **'Rules'**
  String get rules;

  /// No description provided for @gotIt.
  ///
  /// In en, this message translates to:
  /// **'Got it!'**
  String get gotIt;

  /// No description provided for @repeatPatternTitle.
  ///
  /// In en, this message translates to:
  /// **'Repeat Pattern'**
  String get repeatPatternTitle;

  /// No description provided for @repeatPatternDescription.
  ///
  /// In en, this message translates to:
  /// **'Memorize and reproduce the connection pattern'**
  String get repeatPatternDescription;

  /// No description provided for @repeatPatternRules.
  ///
  /// In en, this message translates to:
  /// **'1. Memorize the connections between dots\n2. Each dot can only have ONE connection\n3. Reproduce the exact same pattern\n4. Tap between dots to create connections\n5. Complete as fast as possible'**
  String get repeatPatternRules;

  /// No description provided for @schulteTitle.
  ///
  /// In en, this message translates to:
  /// **'Schulte Table'**
  String get schulteTitle;

  /// No description provided for @schulteDescription.
  ///
  /// In en, this message translates to:
  /// **'Find numbers in ascending order'**
  String get schulteDescription;

  /// No description provided for @schulteRules.
  ///
  /// In en, this message translates to:
  /// **'1. Find and tap numbers in order: 1, 2, 3...\n2. Numbers won\'t change appearance when found\n3. Wrong taps count as mistakes\n4. Complete as fast as possible\n5. Trains peripheral vision and attention'**
  String get schulteRules;

  /// No description provided for @gorbovTitle.
  ///
  /// In en, this message translates to:
  /// **'Gorbov-Schulte'**
  String get gorbovTitle;

  /// No description provided for @gorbovDescription.
  ///
  /// In en, this message translates to:
  /// **'Alternating black ascending, red descending'**
  String get gorbovDescription;

  /// No description provided for @gorbovRules.
  ///
  /// In en, this message translates to:
  /// **'1. Alternate between BLACK and RED numbers\n2. BLACK: tap in ascending order (1, 2, 3...)\n3. RED: tap in descending order (max, max-1...)\n4. Sequence: Black 1 → Red max → Black 2 → Red max-1...\n5. Numbers won\'t change when found'**
  String get gorbovRules;

  /// No description provided for @memoryMatrixTitle.
  ///
  /// In en, this message translates to:
  /// **'Memory Matrix'**
  String get memoryMatrixTitle;

  /// No description provided for @memoryMatrixDescription.
  ///
  /// In en, this message translates to:
  /// **'Remember and reproduce cell positions'**
  String get memoryMatrixDescription;

  /// No description provided for @memoryMatrixRules.
  ///
  /// In en, this message translates to:
  /// **'1. Memorize the highlighted cells\n2. After the pattern disappears, tap the same cells\n3. Each round adds more cells to remember\n4. Wrong taps count as mistakes\n5. Complete all rounds to win'**
  String get memoryMatrixRules;

  /// No description provided for @findPairTitle.
  ///
  /// In en, this message translates to:
  /// **'Find Pair'**
  String get findPairTitle;

  /// No description provided for @findPairDescription.
  ///
  /// In en, this message translates to:
  /// **'Match pairs of cards'**
  String get findPairDescription;

  /// No description provided for @findPairRules.
  ///
  /// In en, this message translates to:
  /// **'1. Memorize card positions during preview\n2. Tap two cards to flip them\n3. If they match, they stay revealed\n4. If not, they flip back\n5. Find all pairs as fast as possible'**
  String get findPairRules;

  /// No description provided for @nBackTitle.
  ///
  /// In en, this message translates to:
  /// **'N-Back'**
  String get nBackTitle;

  /// No description provided for @nBackDescription.
  ///
  /// In en, this message translates to:
  /// **'Remember positions N steps back'**
  String get nBackDescription;

  /// No description provided for @nBackRules.
  ///
  /// In en, this message translates to:
  /// **'1. A square lights up on the grid\n2. Remember if the CURRENT position matches the one N steps ago\n3. Press \'Yes\' if it matches, or wait if it doesn\'t\n4. N-Back level determines how many steps to remember\n5. Higher N = harder challenge'**
  String get nBackRules;

  /// No description provided for @sequenceMemory.
  ///
  /// In en, this message translates to:
  /// **'Sequence Memory'**
  String get sequenceMemory;

  /// No description provided for @sequenceMemoryDescription.
  ///
  /// In en, this message translates to:
  /// **'Remember and repeat sequences'**
  String get sequenceMemoryDescription;

  /// No description provided for @sequenceMemoryRules.
  ///
  /// In en, this message translates to:
  /// **'1. Watch the sequence of lit squares\n2. Repeat the sequence by tapping in the same order\n3. Each level adds one more square to remember\n4. One mistake ends the game\n5. How far can you go?'**
  String get sequenceMemoryRules;

  /// No description provided for @selectLevel.
  ///
  /// In en, this message translates to:
  /// **'Select Level'**
  String get selectLevel;

  /// No description provided for @accuracy.
  ///
  /// In en, this message translates to:
  /// **'Accuracy'**
  String get accuracy;

  /// No description provided for @match.
  ///
  /// In en, this message translates to:
  /// **'Match?'**
  String get match;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @getReady.
  ///
  /// In en, this message translates to:
  /// **'Get Ready'**
  String get getReady;

  /// No description provided for @yourTurn.
  ///
  /// In en, this message translates to:
  /// **'Your Turn'**
  String get yourTurn;

  /// No description provided for @wrong.
  ///
  /// In en, this message translates to:
  /// **'Wrong!'**
  String get wrong;

  /// No description provided for @completed.
  ///
  /// In en, this message translates to:
  /// **'Completed!'**
  String get completed;

  /// No description provided for @sequenceLength.
  ///
  /// In en, this message translates to:
  /// **'Sequence'**
  String get sequenceLength;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'it',
    'ja',
    'ko',
    'pt',
    'ru',
    'tr',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'tr':
      return AppLocalizationsTr();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
