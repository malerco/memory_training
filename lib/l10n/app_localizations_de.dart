// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appName => 'Gedächtnistraining';

  @override
  String get home => 'Startseite';

  @override
  String get settings => 'Einstellungen';

  @override
  String get records => 'Rekorde';

  @override
  String get language => 'Sprache';

  @override
  String get backgroundColor => 'Hintergrundfarbe';

  @override
  String get selectLanguage => 'Sprache Wählen';

  @override
  String get selectBackground => 'Hintergrund Wählen';

  @override
  String get english => 'Englisch';

  @override
  String get russian => 'Russisch';

  @override
  String get spanish => 'Spanisch';

  @override
  String get french => 'Französisch';

  @override
  String get german => 'Deutsch';

  @override
  String get chinese => 'Chinesisch';

  @override
  String get japanese => 'Japanisch';

  @override
  String get korean => 'Koreanisch';

  @override
  String get portuguese => 'Portugiesisch';

  @override
  String get italian => 'Italienisch';

  @override
  String get arabic => 'Arabisch';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Türkisch';

  @override
  String get start => 'Start';

  @override
  String get selectSize => 'Größe Wählen';

  @override
  String get time => 'Zeit';

  @override
  String get mistakes => 'Fehler';

  @override
  String get score => 'Punktzahl';

  @override
  String get bestTime => 'Bestzeit';

  @override
  String get congratulations => 'Herzlichen Glückwunsch!';

  @override
  String get tryAgain => 'Erneut Versuchen';

  @override
  String get backToMenu => 'Zurück zum Menü';

  @override
  String get memorize => 'Muster merken';

  @override
  String get reproduce => 'Muster reproduzieren';

  @override
  String get correct => 'Richtig!';

  @override
  String get incorrect => 'Falsch!';

  @override
  String get gameOver => 'Spiel Vorbei';

  @override
  String get level => 'Level';

  @override
  String get nextLevel => 'Nächstes Level';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Fortsetzen';

  @override
  String get restart => 'Neustart';

  @override
  String get exit => 'Beenden';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get noRecords => 'Noch keine Rekorde';

  @override
  String get seconds => 's';

  @override
  String get round => 'Runde';

  @override
  String get remaining => 'Verbleibend';

  @override
  String get easy => 'Einfach';

  @override
  String get medium => 'Mittel';

  @override
  String get hard => 'Schwer';

  @override
  String get expert => 'Experte';

  @override
  String get rules => 'Regeln';

  @override
  String get gotIt => 'Verstanden!';

  @override
  String get repeatPatternTitle => 'Muster Wiederholen';

  @override
  String get repeatPatternDescription =>
      'Merken und reproduzieren Sie das Muster';

  @override
  String get repeatPatternRules =>
      '1. Merken Sie sich die Verbindungen zwischen Punkten\n2. Jeder Punkt kann nur EINE Verbindung haben\n3. Reproduzieren Sie genau das gleiche Muster\n4. Tippen Sie zwischen Punkte für Verbindungen\n5. So schnell wie möglich abschließen';

  @override
  String get schulteTitle => 'Schulte-Tafel';

  @override
  String get schulteDescription => 'Finden Sie die Zahlen der Reihe nach';

  @override
  String get schulteRules =>
      '1. Finden und tippen Sie Zahlen der Reihe nach: 1, 2, 3...\n2. Gefundene Zahlen ändern sich nicht\n3. Fehler werden gezählt\n4. So schnell wie möglich abschließen\n5. Trainiert peripheres Sehen';

  @override
  String get gorbovTitle => 'Gorbov-Schulte';

  @override
  String get gorbovDescription => 'Abwechselnd schwarz↑, rot↓';

  @override
  String get gorbovRules =>
      '1. Wechseln Sie zwischen SCHWARZEN und ROTEN Zahlen\n2. SCHWARZ: aufsteigend tippen (1, 2, 3...)\n3. ROT: absteigend tippen (max, max-1...)\n4. Reihenfolge: Schwarz 1 → Rot max → Schwarz 2...\n5. Zahlen ändern sich nicht';

  @override
  String get memoryMatrixTitle => 'Gedächtnismatrix';

  @override
  String get memoryMatrixDescription => 'Merken Sie sich die Zellpositionen';

  @override
  String get memoryMatrixRules =>
      '1. Merken Sie sich die markierten Zellen\n2. Nach dem Verschwinden dieselben Zellen tippen\n3. Jede Runde fügt mehr Zellen hinzu\n4. Fehler werden gezählt\n5. Alle Runden abschließen zum Gewinnen';

  @override
  String get findPairTitle => 'Paare Finden';

  @override
  String get findPairDescription => 'Finde passende Kartenpaare';

  @override
  String get findPairRules =>
      '1. Merke dir die Kartenpositionen\n2. Tippe zwei Karten zum Umdrehen\n3. Bei Übereinstimmung bleiben sie sichtbar\n4. Sonst drehen sie sich zurück\n5. Finde alle Paare schnell';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription =>
      'Erinnere dich an Positionen N Schritte zurück';

  @override
  String get nBackRules =>
      '1. Ein Quadrat leuchtet auf dem Raster auf\n2. Erinnere dich, ob die AKTUELLE Position mit der vor N Schritten übereinstimmt\n3. Drücke \'Ja\' bei Übereinstimmung, sonst warte\n4. N-Level bestimmt wie viele Schritte zu merken sind\n5. Höheres N = schwieriger';

  @override
  String get sequenceMemory => 'Sequenzgedächtnis';

  @override
  String get sequenceMemoryDescription => 'Merke und wiederhole Sequenzen';

  @override
  String get sequenceMemoryRules =>
      '1. Beobachte die Sequenz der leuchtenden Quadrate\n2. Wiederhole durch Tippen in derselben Reihenfolge\n3. Jedes Level fügt ein Quadrat hinzu\n4. Ein Fehler beendet das Spiel\n5. Wie weit kommst du?';

  @override
  String get selectLevel => 'Level Wählen';

  @override
  String get accuracy => 'Genauigkeit';

  @override
  String get match => 'Übereinstimmung?';

  @override
  String get yes => 'Ja';

  @override
  String get getReady => 'Bereit Machen';

  @override
  String get yourTurn => 'Dein Zug';

  @override
  String get wrong => 'Falsch!';

  @override
  String get completed => 'Abgeschlossen!';

  @override
  String get sequenceLength => 'Sequenz';
}
