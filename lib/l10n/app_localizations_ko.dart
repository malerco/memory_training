// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appName => '기억력 훈련';

  @override
  String get home => '홈';

  @override
  String get settings => '설정';

  @override
  String get records => '기록';

  @override
  String get language => '언어';

  @override
  String get backgroundColor => '배경색';

  @override
  String get selectLanguage => '언어 선택';

  @override
  String get selectBackground => '배경 선택';

  @override
  String get english => '영어';

  @override
  String get russian => '러시아어';

  @override
  String get spanish => '스페인어';

  @override
  String get french => '프랑스어';

  @override
  String get german => '독일어';

  @override
  String get chinese => '중국어';

  @override
  String get japanese => '일본어';

  @override
  String get korean => '한국어';

  @override
  String get portuguese => '포르투갈어';

  @override
  String get italian => '이탈리아어';

  @override
  String get arabic => '아랍어';

  @override
  String get hindi => '힌디어';

  @override
  String get turkish => '터키어';

  @override
  String get start => '시작';

  @override
  String get selectSize => '크기 선택';

  @override
  String get time => '시간';

  @override
  String get mistakes => '실수';

  @override
  String get score => '점수';

  @override
  String get bestTime => '최고 기록';

  @override
  String get congratulations => '축하합니다!';

  @override
  String get tryAgain => '다시 시도';

  @override
  String get backToMenu => '메뉴로 돌아가기';

  @override
  String get memorize => '패턴 기억하기';

  @override
  String get reproduce => '패턴 재현하기';

  @override
  String get correct => '정답!';

  @override
  String get incorrect => '오답!';

  @override
  String get gameOver => '게임 종료';

  @override
  String get level => '레벨';

  @override
  String get nextLevel => '다음 레벨';

  @override
  String get pause => '일시 정지';

  @override
  String get resume => '계속하기';

  @override
  String get restart => '다시 시작';

  @override
  String get exit => '종료';

  @override
  String get cancel => '취소';

  @override
  String get confirm => '확인';

  @override
  String get noRecords => '기록 없음';

  @override
  String get seconds => '초';

  @override
  String get round => '라운드';

  @override
  String get remaining => '남은';

  @override
  String get easy => '쉬움';

  @override
  String get medium => '보통';

  @override
  String get hard => '어려움';

  @override
  String get expert => '전문가';

  @override
  String get rules => '규칙';

  @override
  String get gotIt => '알겠어요!';

  @override
  String get repeatPatternTitle => '패턴 반복';

  @override
  String get repeatPatternDescription => '연결 패턴을 기억하고 재현하세요';

  @override
  String get repeatPatternRules =>
      '1. 점 사이의 연결을 기억하세요\n2. 각 점은 하나의 연결만 가능\n3. 동일한 패턴을 정확히 재현\n4. 점 사이를 탭하여 연결 생성\n5. 최대한 빨리 완료';

  @override
  String get schulteTitle => '슐테 테이블';

  @override
  String get schulteDescription => '순서대로 숫자 찾기';

  @override
  String get schulteRules =>
      '1. 순서대로 숫자를 찾아 탭: 1, 2, 3...\n2. 찾은 숫자는 모양이 변하지 않음\n3. 잘못된 탭은 실수로 계산\n4. 최대한 빨리 완료\n5. 주변 시야 훈련';

  @override
  String get gorbovTitle => '고르보프-슐테';

  @override
  String get gorbovDescription => '검정↑, 빨강↓ 번갈아가며';

  @override
  String get gorbovRules =>
      '1. 검정과 빨강 숫자를 번갈아 탭\n2. 검정: 오름차순 (1, 2, 3...)\n3. 빨강: 내림차순 (최대, 최대-1...)\n4. 순서: 검정1 → 빨강최대 → 검정2...\n5. 숫자는 변하지 않음';

  @override
  String get memoryMatrixTitle => '기억력 매트릭스';

  @override
  String get memoryMatrixDescription => '셀 위치를 기억하고 재현하세요';

  @override
  String get memoryMatrixRules =>
      '1. 강조된 셀을 기억하세요\n2. 사라진 후 같은 셀을 탭\n3. 각 라운드마다 셀 증가\n4. 실수는 계산됨\n5. 모든 라운드 완료시 승리';

  @override
  String get findPairTitle => '짝 찾기';

  @override
  String get findPairDescription => '같은 카드 매칭';

  @override
  String get findPairRules =>
      '1. 미리보기 동안 카드 위치 기억\n2. 두 카드를 탭하여 뒤집기\n3. 일치하면 보이는 상태 유지\n4. 불일치하면 다시 뒤집힘\n5. 최대한 빨리 모든 쌍 찾기';

  @override
  String get nBackTitle => 'N-백';

  @override
  String get nBackDescription => 'N단계 전 위치 기억';

  @override
  String get nBackRules =>
      '1. 그리드에서 사각형이 빛남\n2. 현재 위치가 N단계 전과 같은지 판단\n3. 같으면 \'예\' 누르기, 아니면 대기\n4. N레벨이 기억할 단계 수 결정\n5. N이 클수록 어려움';

  @override
  String get sequenceMemory => '시퀀스 기억';

  @override
  String get sequenceMemoryDescription => '시퀀스를 기억하고 반복';

  @override
  String get sequenceMemoryRules =>
      '1. 빛나는 사각형 시퀀스 관찰\n2. 같은 순서로 탭하여 반복\n3. 각 레벨마다 사각형 추가\n4. 한 번의 실수로 게임 종료\n5. 얼마나 멀리 갈 수 있나요?';

  @override
  String get selectLevel => '레벨 선택';

  @override
  String get accuracy => '정확도';

  @override
  String get match => '일치?';

  @override
  String get yes => '예';

  @override
  String get getReady => '준비';

  @override
  String get yourTurn => '당신 차례';

  @override
  String get wrong => '틀림!';

  @override
  String get completed => '완료!';

  @override
  String get sequenceLength => '시퀀스';
}
