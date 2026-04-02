// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appName => 'Allenamento Memoria';

  @override
  String get home => 'Home';

  @override
  String get settings => 'Impostazioni';

  @override
  String get records => 'Record';

  @override
  String get language => 'Lingua';

  @override
  String get backgroundColor => 'Colore Sfondo';

  @override
  String get selectLanguage => 'Seleziona Lingua';

  @override
  String get selectBackground => 'Seleziona Sfondo';

  @override
  String get english => 'Inglese';

  @override
  String get russian => 'Russo';

  @override
  String get spanish => 'Spagnolo';

  @override
  String get french => 'Francese';

  @override
  String get german => 'Tedesco';

  @override
  String get chinese => 'Cinese';

  @override
  String get japanese => 'Giapponese';

  @override
  String get korean => 'Coreano';

  @override
  String get portuguese => 'Portoghese';

  @override
  String get italian => 'Italiano';

  @override
  String get arabic => 'Arabo';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get start => 'Inizia';

  @override
  String get selectSize => 'Seleziona Dimensione';

  @override
  String get time => 'Tempo';

  @override
  String get mistakes => 'Errori';

  @override
  String get score => 'Punteggio';

  @override
  String get bestTime => 'Miglior Tempo';

  @override
  String get congratulations => 'Congratulazioni!';

  @override
  String get tryAgain => 'Riprova';

  @override
  String get backToMenu => 'Torna al Menu';

  @override
  String get memorize => 'Memorizza il pattern';

  @override
  String get reproduce => 'Riproduci il pattern';

  @override
  String get correct => 'Corretto!';

  @override
  String get incorrect => 'Sbagliato!';

  @override
  String get gameOver => 'Fine Partita';

  @override
  String get level => 'Livello';

  @override
  String get nextLevel => 'Prossimo Livello';

  @override
  String get pause => 'Pausa';

  @override
  String get resume => 'Riprendi';

  @override
  String get restart => 'Ricomincia';

  @override
  String get exit => 'Esci';

  @override
  String get cancel => 'Annulla';

  @override
  String get confirm => 'Conferma';

  @override
  String get noRecords => 'Nessun record';

  @override
  String get seconds => 's';

  @override
  String get round => 'Round';

  @override
  String get remaining => 'Rimanente';

  @override
  String get easy => 'Facile';

  @override
  String get medium => 'Medio';

  @override
  String get hard => 'Difficile';

  @override
  String get expert => 'Esperto';

  @override
  String get rules => 'Regole';

  @override
  String get gotIt => 'Capito!';

  @override
  String get repeatPatternTitle => 'Ripeti Pattern';

  @override
  String get repeatPatternDescription => 'Memorizza e riproduci le connessioni';

  @override
  String get repeatPatternRules =>
      '1. Memorizza le connessioni tra i punti\n2. Ogni punto può avere solo UNA connessione\n3. Riproduci esattamente lo stesso pattern\n4. Tocca tra i punti per creare connessioni\n5. Completa il più velocemente possibile';

  @override
  String get schulteTitle => 'Tabella di Schulte';

  @override
  String get schulteDescription => 'Trova i numeri in ordine';

  @override
  String get schulteRules =>
      '1. Trova e tocca i numeri in ordine: 1, 2, 3...\n2. I numeri non cambiano aspetto\n3. I tocchi errati contano come errori\n4. Completa il più velocemente possibile\n5. Allena la visione periferica';

  @override
  String get gorbovTitle => 'Gorbov-Schulte';

  @override
  String get gorbovDescription => 'Alterna nero↑, rosso↓';

  @override
  String get gorbovRules =>
      '1. Alterna tra numeri NERI e ROSSI\n2. NERO: tocca in ordine crescente (1, 2, 3...)\n3. ROSSO: tocca in ordine decrescente (max, max-1...)\n4. Sequenza: Nero 1 → Rosso max → Nero 2...\n5. I numeri non cambiano';

  @override
  String get memoryMatrixTitle => 'Matrice di Memoria';

  @override
  String get memoryMatrixDescription => 'Ricorda le posizioni delle celle';

  @override
  String get memoryMatrixRules =>
      '1. Memorizza le celle illuminate\n2. Dopo che scompaiono, tocca le stesse celle\n3. Ogni round aggiunge più celle\n4. Gli errori vengono contati\n5. Completa tutti i round per vincere';

  @override
  String get findPairTitle => 'Trova la Coppia';

  @override
  String get findPairDescription => 'Abbina carte uguali';

  @override
  String get findPairRules =>
      '1. Memorizza le posizioni durante l\'anteprima\n2. Tocca due carte per girarle\n3. Se corrispondono, restano visibili\n4. Altrimenti, si girano\n5. Trova tutte le coppie velocemente';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription => 'Ricorda posizioni N passi indietro';

  @override
  String get nBackRules =>
      '1. Un quadrato si illumina sulla griglia\n2. Ricorda se la posizione ATTUALE corrisponde a quella di N passi fa\n3. Premi \'Sì\' se corrisponde, altrimenti aspetta\n4. Il livello N determina quanti passi ricordare\n5. N maggiore = più difficile';

  @override
  String get sequenceMemory => 'Memoria di Sequenza';

  @override
  String get sequenceMemoryDescription => 'Memorizza e ripeti le sequenze';

  @override
  String get sequenceMemoryRules =>
      '1. Osserva la sequenza di quadrati illuminati\n2. Ripeti toccando nello stesso ordine\n3. Ogni livello aggiunge un quadrato\n4. Un errore termina il gioco\n5. Fin dove puoi arrivare?';

  @override
  String get selectLevel => 'Seleziona Livello';

  @override
  String get accuracy => 'Precisione';

  @override
  String get match => 'Corrisponde?';

  @override
  String get yes => 'Sì';

  @override
  String get getReady => 'Preparati';

  @override
  String get yourTurn => 'Il Tuo Turno';

  @override
  String get wrong => 'Sbagliato!';

  @override
  String get completed => 'Completato!';

  @override
  String get sequenceLength => 'Sequenza';

  @override
  String get chimpTestTitle => 'Test dello Scimpanzé';

  @override
  String get chimpTestDescription =>
      'Ricorda le posizioni dei numeri e tocca in ordine';

  @override
  String get chimpTestRules =>
      '1. I numeri appaiono brevemente sulla griglia\n2. Dopo che si nascondono, toccali in ordine crescente (1, 2, 3...)\n3. Ogni round aggiunge un numero\n4. Un tocco sbagliato termina il gioco\n5. Basato su ricerche dove gli scimpanzé hanno superato gli umani';

  @override
  String get tapNumber => 'Tocca numero';

  @override
  String get pictureMemoryTitle => 'Memoria delle Immagini';

  @override
  String get pictureMemoryDescription => 'Ricorda quali immagini hai visto';

  @override
  String get pictureMemoryRules =>
      '1. Le immagini appaiono una alla volta\n2. Decidi se hai visto questa immagine prima\n3. Tocca \'Nuova\' se è la prima volta\n4. Tocca \'Vista\' se l\'hai già vista\n5. Hai 3 vite - non sbagliare!';

  @override
  String get haveYouSeenThis => 'Hai visto questo?';

  @override
  String get newPicture => 'Nuova';

  @override
  String get seenBefore => 'Vista';

  @override
  String get objectLocationTitle => 'Posizione Oggetti';

  @override
  String get objectLocationDescription => 'Ricorda dove erano gli oggetti';

  @override
  String get objectLocationRules =>
      '1. Memorizza le posizioni degli oggetti sulla griglia\n2. Dopo che scompaiono, rimettili a posto\n3. Tocca le celle per posizionare gli oggetti\n4. Ogni round aggiunge più oggetti\n5. Posiziona tutti correttamente per avanzare';

  @override
  String get placeObjects => 'Posiziona gli oggetti nelle loro posizioni';
}
