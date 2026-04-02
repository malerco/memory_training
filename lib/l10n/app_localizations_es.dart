// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appName => 'Entrenamiento de Memoria';

  @override
  String get home => 'Inicio';

  @override
  String get settings => 'Configuración';

  @override
  String get records => 'Récords';

  @override
  String get language => 'Idioma';

  @override
  String get backgroundColor => 'Color de Fondo';

  @override
  String get selectLanguage => 'Seleccionar Idioma';

  @override
  String get selectBackground => 'Seleccionar Fondo';

  @override
  String get english => 'Inglés';

  @override
  String get russian => 'Ruso';

  @override
  String get spanish => 'Español';

  @override
  String get french => 'Francés';

  @override
  String get german => 'Alemán';

  @override
  String get chinese => 'Chino';

  @override
  String get japanese => 'Japonés';

  @override
  String get korean => 'Coreano';

  @override
  String get portuguese => 'Portugués';

  @override
  String get italian => 'Italiano';

  @override
  String get arabic => 'Árabe';

  @override
  String get hindi => 'Hindi';

  @override
  String get turkish => 'Turco';

  @override
  String get start => 'Iniciar';

  @override
  String get selectSize => 'Seleccionar Tamaño';

  @override
  String get time => 'Tiempo';

  @override
  String get mistakes => 'Errores';

  @override
  String get score => 'Puntuación';

  @override
  String get bestTime => 'Mejor Tiempo';

  @override
  String get congratulations => '¡Felicitaciones!';

  @override
  String get tryAgain => 'Intentar de Nuevo';

  @override
  String get backToMenu => 'Volver al Menú';

  @override
  String get memorize => 'Memoriza el patrón';

  @override
  String get reproduce => 'Reproduce el patrón';

  @override
  String get correct => '¡Correcto!';

  @override
  String get incorrect => '¡Incorrecto!';

  @override
  String get gameOver => 'Fin del Juego';

  @override
  String get level => 'Nivel';

  @override
  String get nextLevel => 'Siguiente Nivel';

  @override
  String get pause => 'Pausa';

  @override
  String get resume => 'Continuar';

  @override
  String get restart => 'Reiniciar';

  @override
  String get exit => 'Salir';

  @override
  String get cancel => 'Cancelar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get noRecords => 'Sin récords aún';

  @override
  String get seconds => 's';

  @override
  String get round => 'Ronda';

  @override
  String get remaining => 'Restante';

  @override
  String get easy => 'Fácil';

  @override
  String get medium => 'Medio';

  @override
  String get hard => 'Difícil';

  @override
  String get expert => 'Experto';

  @override
  String get rules => 'Reglas';

  @override
  String get gotIt => '¡Entendido!';

  @override
  String get repeatPatternTitle => 'Repetir Patrón';

  @override
  String get repeatPatternDescription => 'Memoriza y reproduce el patrón';

  @override
  String get repeatPatternRules =>
      '1. Memoriza las conexiones entre puntos\n2. Cada punto solo puede tener UNA conexión\n3. Reproduce exactamente el mismo patrón\n4. Toca entre puntos para crear conexiones\n5. Completa lo más rápido posible';

  @override
  String get schulteTitle => 'Tabla de Schulte';

  @override
  String get schulteDescription => 'Encuentra los números en orden';

  @override
  String get schulteRules =>
      '1. Encuentra y toca los números en orden: 1, 2, 3...\n2. Los números no cambian al encontrarlos\n3. Los toques incorrectos cuentan como errores\n4. Completa lo más rápido posible\n5. Entrena la visión periférica';

  @override
  String get gorbovTitle => 'Gorbov-Schulte';

  @override
  String get gorbovDescription => 'Alternando negro↑, rojo↓';

  @override
  String get gorbovRules =>
      '1. Alterna entre números NEGROS y ROJOS\n2. NEGRO: toca en orden ascendente (1, 2, 3...)\n3. ROJO: toca en orden descendente (máx, máx-1...)\n4. Secuencia: Negro 1 → Rojo máx → Negro 2...\n5. Los números no cambian al encontrarlos';

  @override
  String get memoryMatrixTitle => 'Matriz de Memoria';

  @override
  String get memoryMatrixDescription => 'Recuerda las posiciones';

  @override
  String get memoryMatrixRules =>
      '1. Memoriza las celdas iluminadas\n2. Después de que desaparezcan, toca las mismas celdas\n3. Cada ronda añade más celdas\n4. Los errores se cuentan\n5. Completa todas las rondas para ganar';

  @override
  String get findPairTitle => 'Encuentra el Par';

  @override
  String get findPairDescription => 'Empareja las cartas iguales';

  @override
  String get findPairRules =>
      '1. Memoriza las posiciones durante la vista previa\n2. Toca dos cartas para voltearlas\n3. Si coinciden, permanecen visibles\n4. Si no, se voltean de nuevo\n5. Encuentra todos los pares lo más rápido posible';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription => 'Recuerda posiciones N pasos atrás';

  @override
  String get nBackRules =>
      '1. Un cuadrado se ilumina en la cuadrícula\n2. Recuerda si la posición ACTUAL coincide con la de N pasos atrás\n3. Presiona \'Sí\' si coincide, o espera si no\n4. El nivel N determina cuántos pasos recordar\n5. Mayor N = más difícil';

  @override
  String get sequenceMemory => 'Memoria de Secuencia';

  @override
  String get sequenceMemoryDescription => 'Recuerda y repite secuencias';

  @override
  String get sequenceMemoryRules =>
      '1. Observa la secuencia de cuadrados iluminados\n2. Repite tocando en el mismo orden\n3. Cada nivel añade un cuadrado más\n4. Un error termina el juego\n5. ¿Hasta dónde puedes llegar?';

  @override
  String get selectLevel => 'Seleccionar Nivel';

  @override
  String get accuracy => 'Precisión';

  @override
  String get match => '¿Coincide?';

  @override
  String get yes => 'Sí';

  @override
  String get getReady => 'Prepárate';

  @override
  String get yourTurn => 'Tu Turno';

  @override
  String get wrong => '¡Incorrecto!';

  @override
  String get completed => '¡Completado!';

  @override
  String get sequenceLength => 'Secuencia';

  @override
  String get chimpTestTitle => 'Test del Chimpancé';

  @override
  String get chimpTestDescription =>
      'Recuerda posiciones de números y toca en orden';

  @override
  String get chimpTestRules =>
      '1. Los números aparecen brevemente en la cuadrícula\n2. Después de ocultarse, tócalos en orden ascendente (1, 2, 3...)\n3. Cada ronda añade un número más\n4. Un toque incorrecto termina el juego\n5. Basado en investigación donde los chimpancés superaron a los humanos';

  @override
  String get tapNumber => 'Toca número';

  @override
  String get pictureMemoryTitle => 'Memoria de Imágenes';

  @override
  String get pictureMemoryDescription => 'Recuerda qué imágenes has visto';

  @override
  String get pictureMemoryRules =>
      '1. Las imágenes aparecen una a una\n2. Decide si has visto esta imagen antes\n3. Toca \'Nueva\' si es la primera vez\n4. Toca \'Vista\' si la has visto antes\n5. Tienes 3 vidas - ¡no cometas errores!';

  @override
  String get haveYouSeenThis => '¿Has visto esto?';

  @override
  String get newPicture => 'Nueva';

  @override
  String get seenBefore => 'Vista';

  @override
  String get objectLocationTitle => 'Ubicación de Objetos';

  @override
  String get objectLocationDescription => 'Recuerda dónde estaban los objetos';

  @override
  String get objectLocationRules =>
      '1. Memoriza las posiciones de los objetos en la cuadrícula\n2. Después de desaparecer, colócalos de vuelta\n3. Toca celdas para colocar objetos\n4. Cada ronda añade más objetos\n5. Coloca todos correctamente para avanzar';

  @override
  String get placeObjects => 'Coloca objetos en sus posiciones';
}
