// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appName => 'Тренировка памяти';

  @override
  String get home => 'Главная';

  @override
  String get settings => 'Настройки';

  @override
  String get records => 'Рекорды';

  @override
  String get language => 'Язык';

  @override
  String get backgroundColor => 'Цвет фона';

  @override
  String get selectLanguage => 'Выберите язык';

  @override
  String get selectBackground => 'Выберите фон';

  @override
  String get english => 'Английский';

  @override
  String get russian => 'Русский';

  @override
  String get spanish => 'Испанский';

  @override
  String get french => 'Французский';

  @override
  String get german => 'Немецкий';

  @override
  String get chinese => 'Китайский';

  @override
  String get japanese => 'Японский';

  @override
  String get korean => 'Корейский';

  @override
  String get portuguese => 'Португальский';

  @override
  String get italian => 'Итальянский';

  @override
  String get arabic => 'Арабский';

  @override
  String get hindi => 'Хинди';

  @override
  String get turkish => 'Турецкий';

  @override
  String get start => 'Начать';

  @override
  String get selectSize => 'Выберите размер сетки';

  @override
  String get time => 'Время';

  @override
  String get mistakes => 'Ошибки';

  @override
  String get score => 'Счёт';

  @override
  String get bestTime => 'Лучшее время';

  @override
  String get congratulations => 'Поздравляем!';

  @override
  String get tryAgain => 'Попробовать снова';

  @override
  String get backToMenu => 'В меню';

  @override
  String get memorize => 'Запомните комбинацию';

  @override
  String get reproduce => 'Воспроизведите комбинацию';

  @override
  String get correct => 'Правильно!';

  @override
  String get incorrect => 'Неправильно!';

  @override
  String get gameOver => 'Игра окончена';

  @override
  String get level => 'Уровень';

  @override
  String get nextLevel => 'Следующий уровень';

  @override
  String get pause => 'Пауза';

  @override
  String get resume => 'Продолжить';

  @override
  String get restart => 'Заново';

  @override
  String get exit => 'Выход';

  @override
  String get cancel => 'Отмена';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get noRecords => 'Рекордов пока нет';

  @override
  String get seconds => 'с';

  @override
  String get round => 'Раунд';

  @override
  String get remaining => 'Осталось';

  @override
  String get easy => 'Легко';

  @override
  String get medium => 'Средне';

  @override
  String get hard => 'Сложно';

  @override
  String get expert => 'Эксперт';

  @override
  String get rules => 'Правила';

  @override
  String get gotIt => 'Понятно!';

  @override
  String get repeatPatternTitle => 'Повтори комбинацию';

  @override
  String get repeatPatternDescription => 'Запомните и воспроизведите связи';

  @override
  String get repeatPatternRules =>
      '1. Запомните соединения между точками\n2. Каждая точка может иметь только ОДНО соединение\n3. Воспроизведите точно такую же комбинацию\n4. Нажимайте между точками для создания связей\n5. Завершите как можно быстрее';

  @override
  String get schulteTitle => 'Таблица Шульте';

  @override
  String get schulteDescription => 'Найдите числа по возрастанию';

  @override
  String get schulteRules =>
      '1. Находите и нажимайте числа по порядку: 1, 2, 3...\n2. Найденные числа не меняют вид\n3. Ошибочные нажатия засчитываются\n4. Завершите как можно быстрее\n5. Тренирует периферическое зрение';

  @override
  String get gorbovTitle => 'Горбова-Шульте';

  @override
  String get gorbovDescription => 'Чередуйте: чёрные↑, красные↓';

  @override
  String get gorbovRules =>
      '1. Чередуйте ЧЁРНЫЕ и КРАСНЫЕ числа\n2. ЧЁРНЫЕ: по возрастанию (1, 2, 3...)\n3. КРАСНЫЕ: по убыванию (макс, макс-1...)\n4. Порядок: Чёрный 1 → Красный макс → Чёрный 2...\n5. Найденные числа не меняют вид';

  @override
  String get memoryMatrixTitle => 'Матрица памяти';

  @override
  String get memoryMatrixDescription => 'Запомните и воспроизведите ячейки';

  @override
  String get memoryMatrixRules =>
      '1. Запомните подсвеченные ячейки\n2. После исчезновения нажмите те же ячейки\n3. Каждый раунд добавляет больше ячеек\n4. Ошибки засчитываются\n5. Пройдите все раунды для победы';

  @override
  String get findPairTitle => 'Найди пару';

  @override
  String get findPairDescription => 'Найдите одинаковые карточки';

  @override
  String get findPairRules =>
      '1. Запомните расположение карт при показе\n2. Нажимайте две карты чтобы перевернуть\n3. Совпавшие карты остаются открытыми\n4. Несовпавшие переворачиваются обратно\n5. Найдите все пары как можно быстрее';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription => 'Вспомните позицию N шагов назад';

  @override
  String get nBackRules =>
      '1. Квадрат загорается на сетке\n2. Определите, совпадает ли ТЕКУЩАЯ позиция с позицией N шагов назад\n3. Нажмите \'Да\' если совпадает, иначе ждите\n4. Уровень N определяет сколько шагов помнить\n5. Больше N = сложнее';

  @override
  String get sequenceMemory => 'Память последовательности';

  @override
  String get sequenceMemoryDescription => 'Запомните и повторите';

  @override
  String get sequenceMemoryRules =>
      '1. Смотрите последовательность загорающихся квадратов\n2. Повторите её, нажимая в том же порядке\n3. Каждый уровень добавляет ещё один квадрат\n4. Одна ошибка — конец игры\n5. Как далеко вы пройдёте?';

  @override
  String get selectLevel => 'Выберите уровень';

  @override
  String get accuracy => 'Точность';

  @override
  String get match => 'Совпадение?';

  @override
  String get yes => 'Да';

  @override
  String get getReady => 'Приготовьтесь';

  @override
  String get yourTurn => 'Ваш ход';

  @override
  String get wrong => 'Неверно!';

  @override
  String get completed => 'Завершено!';

  @override
  String get sequenceLength => 'Последовательность';

  @override
  String get chimpTestTitle => 'Тест шимпанзе';

  @override
  String get chimpTestDescription =>
      'Запомните позиции чисел и нажмите по порядку';

  @override
  String get chimpTestRules =>
      '1. Числа появляются на сетке ненадолго\n2. После скрытия нажмите их по порядку (1, 2, 3...)\n3. Каждый раунд добавляет ещё одно число\n4. Одно неверное нажатие — конец игры\n5. Основано на исследовании, где шимпанзе превзошли людей';

  @override
  String get tapNumber => 'Нажмите число';

  @override
  String get pictureMemoryTitle => 'Память на картинки';

  @override
  String get pictureMemoryDescription => 'Запомните какие картинки вы видели';

  @override
  String get pictureMemoryRules =>
      '1. Картинки появляются по одной\n2. Определите, видели ли вы эту картинку раньше\n3. Нажмите \'Новая\' если впервые\n4. Нажмите \'Видел\' если уже была\n5. У вас 3 жизни — не ошибайтесь!';

  @override
  String get haveYouSeenThis => 'Вы это видели?';

  @override
  String get newPicture => 'Новая';

  @override
  String get seenBefore => 'Видел';

  @override
  String get objectLocationTitle => 'Расположение объектов';

  @override
  String get objectLocationDescription => 'Запомните где были объекты';

  @override
  String get objectLocationRules =>
      '1. Запомните позиции объектов на сетке\n2. После исчезновения верните их на места\n3. Нажимайте на ячейки чтобы разместить объекты\n4. Каждый раунд добавляет больше объектов\n5. Разместите все правильно чтобы продолжить';

  @override
  String get placeObjects => 'Разместите объекты на свои места';
}
