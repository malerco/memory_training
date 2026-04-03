// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appName => 'Entraînement Mémoire';

  @override
  String get home => 'Accueil';

  @override
  String get settings => 'Paramètres';

  @override
  String get records => 'Records';

  @override
  String get language => 'Langue';

  @override
  String get backgroundColor => 'Couleur de Fond';

  @override
  String get selectLanguage => 'Choisir la Langue';

  @override
  String get selectBackground => 'Choisir le Fond';

  @override
  String get english => 'Anglais';

  @override
  String get russian => 'Russe';

  @override
  String get spanish => 'Espagnol';

  @override
  String get french => 'Français';

  @override
  String get german => 'Allemand';

  @override
  String get chinese => 'Chinois';

  @override
  String get japanese => 'Japonais';

  @override
  String get korean => 'Coréen';

  @override
  String get portuguese => 'Portugais';

  @override
  String get italian => 'Italien';

  @override
  String get arabic => 'Arabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turc';

  @override
  String get start => 'Commencer';

  @override
  String get selectSize => 'Choisir la Taille';

  @override
  String get time => 'Temps';

  @override
  String get mistakes => 'Erreurs';

  @override
  String get score => 'Score';

  @override
  String get bestTime => 'Meilleur Temps';

  @override
  String get congratulations => 'Félicitations!';

  @override
  String get tryAgain => 'Réessayer';

  @override
  String get backToMenu => 'Retour au Menu';

  @override
  String get memorize => 'Mémorisez le motif';

  @override
  String get reproduce => 'Reproduisez le motif';

  @override
  String get correct => 'Correct!';

  @override
  String get incorrect => 'Incorrect!';

  @override
  String get gameOver => 'Fin de Partie';

  @override
  String get level => 'Niveau';

  @override
  String get nextLevel => 'Niveau Suivant';

  @override
  String get pause => 'Pause';

  @override
  String get resume => 'Reprendre';

  @override
  String get restart => 'Recommencer';

  @override
  String get exit => 'Quitter';

  @override
  String get cancel => 'Annuler';

  @override
  String get confirm => 'Confirmer';

  @override
  String get noRecords => 'Pas encore de records';

  @override
  String get seconds => 's';

  @override
  String get round => 'Manche';

  @override
  String get remaining => 'Restant';

  @override
  String get easy => 'Facile';

  @override
  String get medium => 'Moyen';

  @override
  String get hard => 'Difficile';

  @override
  String get expert => 'Expert';

  @override
  String get rules => 'Règles';

  @override
  String get gotIt => 'Compris!';

  @override
  String get repeatPatternTitle => 'Répéter le Motif';

  @override
  String get repeatPatternDescription =>
      'Mémorisez et reproduisez les connexions';

  @override
  String get repeatPatternRules =>
      '1. Mémorisez les connexions entre les points\n2. Chaque point ne peut avoir qu\'UNE connexion\n3. Reproduisez exactement le même motif\n4. Touchez entre les points pour créer des connexions\n5. Terminez le plus vite possible';

  @override
  String get schulteTitle => 'Table de Schulte';

  @override
  String get schulteDescription => 'Trouvez les nombres dans l\'ordre';

  @override
  String get schulteRules =>
      '1. Trouvez et touchez les nombres dans l\'ordre: 1, 2, 3...\n2. Les nombres ne changent pas d\'apparence\n3. Les erreurs sont comptées\n4. Terminez le plus vite possible\n5. Entraîne la vision périphérique';

  @override
  String get gorbovTitle => 'Gorbov-Schulte';

  @override
  String get gorbovDescription => 'Alternez noir↑, rouge↓';

  @override
  String get gorbovRules =>
      '1. Alternez entre les nombres NOIRS et ROUGES\n2. NOIR: touchez en ordre croissant (1, 2, 3...)\n3. ROUGE: touchez en ordre décroissant (max, max-1...)\n4. Séquence: Noir 1 → Rouge max → Noir 2...\n5. Les nombres ne changent pas';

  @override
  String get memoryMatrixTitle => 'Matrice Mémoire';

  @override
  String get memoryMatrixDescription => 'Retenez les positions des cellules';

  @override
  String get memoryMatrixRules =>
      '1. Mémorisez les cellules illuminées\n2. Après disparition, touchez les mêmes cellules\n3. Chaque tour ajoute plus de cellules\n4. Les erreurs sont comptées\n5. Complétez tous les tours pour gagner';

  @override
  String get findPairTitle => 'Trouver la Paire';

  @override
  String get findPairDescription => 'Associez les cartes identiques';

  @override
  String get findPairRules =>
      '1. Mémorisez les positions pendant l\'aperçu\n2. Touchez deux cartes pour les retourner\n3. Si elles correspondent, elles restent visibles\n4. Sinon, elles se retournent\n5. Trouvez toutes les paires rapidement';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription =>
      'Rappelez-vous des positions N étapes en arrière';

  @override
  String get nBackRules =>
      '1. Un carré s\'allume sur la grille\n2. Rappelez-vous si la position ACTUELLE correspond à celle d\'il y a N étapes\n3. Appuyez sur \'Oui\' si ça correspond, sinon attendez\n4. Le niveau N détermine combien d\'étapes retenir\n5. Plus N est grand = plus difficile';

  @override
  String get sequenceMemory => 'Mémoire de Séquence';

  @override
  String get sequenceMemoryDescription => 'Mémorisez et répétez les séquences';

  @override
  String get sequenceMemoryRules =>
      '1. Regardez la séquence de carrés illuminés\n2. Répétez en touchant dans le même ordre\n3. Chaque niveau ajoute un carré\n4. Une erreur termine le jeu\n5. Jusqu\'où pouvez-vous aller?';

  @override
  String get selectLevel => 'Choisir le Niveau';

  @override
  String get accuracy => 'Précision';

  @override
  String get match => 'Correspondance?';

  @override
  String get yes => 'Oui';

  @override
  String get getReady => 'Préparez-vous';

  @override
  String get yourTurn => 'Votre Tour';

  @override
  String get wrong => 'Faux!';

  @override
  String get completed => 'Terminé!';

  @override
  String get sequenceLength => 'Séquence';

  @override
  String get chimpTestTitle => 'Test du Chimpanzé';

  @override
  String get chimpTestDescription =>
      'Mémorisez les positions des nombres et touchez dans l\'ordre';

  @override
  String get chimpTestRules =>
      '1. Les nombres apparaissent brièvement sur la grille\n2. Après leur disparition, touchez-les dans l\'ordre croissant (1, 2, 3...)\n3. Chaque tour ajoute un nombre\n4. Un mauvais toucher termine le jeu\n5. Basé sur une recherche où les chimpanzés ont surpassé les humains';

  @override
  String get tapNumber => 'Touchez le nombre';

  @override
  String get pictureMemoryTitle => 'Mémoire des Images';

  @override
  String get pictureMemoryDescription =>
      'Souvenez-vous des images que vous avez vues';

  @override
  String get pictureMemoryRules =>
      '1. Les images apparaissent une à une\n2. Décidez si vous avez déjà vu cette image\n3. Touchez \'Nouveau\' si c\'est la première fois\n4. Touchez \'Vu\' si vous l\'avez déjà vue\n5. Vous avez 3 vies - ne faites pas d\'erreurs!';

  @override
  String get haveYouSeenThis => 'Avez-vous vu ceci?';

  @override
  String get newPicture => 'Nouveau';

  @override
  String get seenBefore => 'Vu';

  @override
  String get objectLocationTitle => 'Position des Objets';

  @override
  String get objectLocationDescription =>
      'Souvenez-vous où les objets étaient placés';

  @override
  String get objectLocationRules =>
      '1. Mémorisez les positions des objets sur la grille\n2. Après leur disparition, replacez-les\n3. Touchez les cellules pour placer les objets\n4. Chaque tour ajoute plus d\'objets\n5. Placez tous correctement pour avancer';

  @override
  String get placeObjects => 'Placez les objets à leurs positions';
}
