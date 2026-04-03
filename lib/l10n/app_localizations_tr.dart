// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appName => 'Hafıza Eğitimi';

  @override
  String get home => 'Ana Sayfa';

  @override
  String get settings => 'Ayarlar';

  @override
  String get records => 'Rekorlar';

  @override
  String get language => 'Dil';

  @override
  String get backgroundColor => 'Arka Plan Rengi';

  @override
  String get selectLanguage => 'Dil Seçin';

  @override
  String get selectBackground => 'Arka Plan Seçin';

  @override
  String get english => 'İngilizce';

  @override
  String get russian => 'Rusça';

  @override
  String get spanish => 'İspanyolca';

  @override
  String get french => 'Fransızca';

  @override
  String get german => 'Almanca';

  @override
  String get chinese => 'Çince';

  @override
  String get japanese => 'Japonca';

  @override
  String get korean => 'Korece';

  @override
  String get portuguese => 'Portekizce';

  @override
  String get italian => 'İtalyanca';

  @override
  String get arabic => 'Arapça';

  @override
  String get hindi => 'Hintçe';

  @override
  String get turkish => 'Türkçe';

  @override
  String get start => 'Başla';

  @override
  String get selectSize => 'Boyut Seçin';

  @override
  String get time => 'Süre';

  @override
  String get mistakes => 'Hatalar';

  @override
  String get score => 'Puan';

  @override
  String get bestTime => 'En İyi Süre';

  @override
  String get congratulations => 'Tebrikler!';

  @override
  String get tryAgain => 'Tekrar Dene';

  @override
  String get backToMenu => 'Menüye Dön';

  @override
  String get memorize => 'Deseni ezberle';

  @override
  String get reproduce => 'Deseni tekrarla';

  @override
  String get correct => 'Doğru!';

  @override
  String get incorrect => 'Yanlış!';

  @override
  String get gameOver => 'Oyun Bitti';

  @override
  String get level => 'Seviye';

  @override
  String get nextLevel => 'Sonraki Seviye';

  @override
  String get pause => 'Duraklat';

  @override
  String get resume => 'Devam Et';

  @override
  String get restart => 'Yeniden Başla';

  @override
  String get exit => 'Çıkış';

  @override
  String get cancel => 'İptal';

  @override
  String get confirm => 'Onayla';

  @override
  String get noRecords => 'Henüz kayıt yok';

  @override
  String get seconds => 'sn';

  @override
  String get round => 'Tur';

  @override
  String get remaining => 'Kalan';

  @override
  String get easy => 'Kolay';

  @override
  String get medium => 'Orta';

  @override
  String get hard => 'Zor';

  @override
  String get expert => 'Uzman';

  @override
  String get rules => 'Kurallar';

  @override
  String get gotIt => 'Anladım!';

  @override
  String get repeatPatternTitle => 'Deseni Tekrarla';

  @override
  String get repeatPatternDescription =>
      'Bağlantı desenini ezberle ve tekrarla';

  @override
  String get repeatPatternRules =>
      '1. Noktalar arasındaki bağlantıları ezberle\n2. Her nokta sadece BİR bağlantıya sahip olabilir\n3. Aynı deseni tam olarak tekrarla\n4. Bağlantı oluşturmak için noktalar arasına dokun\n5. Mümkün olduğunca hızlı tamamla';

  @override
  String get schulteTitle => 'Schulte Tablosu';

  @override
  String get schulteDescription => 'Sayıları sırayla bul';

  @override
  String get schulteRules =>
      '1. Sayıları sırayla bul ve dokun: 1, 2, 3...\n2. Bulunan sayılar görünüşünü değiştirmez\n3. Yanlış dokunuşlar hata olarak sayılır\n4. Mümkün olduğunca hızlı tamamla\n5. Çevresel görüşü eğitir';

  @override
  String get gorbovTitle => 'Gorbov-Schulte';

  @override
  String get gorbovDescription => 'Siyah↑ ve kırmızı↓ sırayla';

  @override
  String get gorbovRules =>
      '1. SİYAH ve KIRMIZI sayılar arasında değiş\n2. SİYAH: artan sırada dokun (1, 2, 3...)\n3. KIRMIZI: azalan sırada dokun (maks, maks-1...)\n4. Sıra: Siyah 1 → Kırmızı maks → Siyah 2...\n5. Sayılar değişmez';

  @override
  String get memoryMatrixTitle => 'Hafıza Matrisi';

  @override
  String get memoryMatrixDescription => 'Hücre konumlarını hatırla';

  @override
  String get memoryMatrixRules =>
      '1. Aydınlatılmış hücreleri ezberle\n2. Kaybolduktan sonra aynı hücrelere dokun\n3. Her tur daha fazla hücre ekler\n4. Hatalar sayılır\n5. Kazanmak için tüm turları tamamla';

  @override
  String get findPairTitle => 'Eşini Bul';

  @override
  String get findPairDescription => 'Aynı kartları eşleştir';

  @override
  String get findPairRules =>
      '1. Önizlemede kart konumlarını ezberle\n2. İki karta dokun çevir\n3. Eşleşirse görünür kalır\n4. Eşleşmezse geri döner\n5. Tüm eşleri hızlıca bul';

  @override
  String get nBackTitle => 'N-Back';

  @override
  String get nBackDescription => 'N adım önceki konumları hatırla';

  @override
  String get nBackRules =>
      '1. Izgarada bir kare yanar\n2. Şu anki konumun N adım öncekiyle aynı olup olmadığını hatırla\n3. Eşleşirse \'Evet\'e bas, değilse bekle\n4. N seviyesi kaç adım hatırlanacağını belirler\n5. N büyüdükçe zorlaşır';

  @override
  String get sequenceMemory => 'Sıra Hafızası';

  @override
  String get sequenceMemoryDescription => 'Sıraları hatırla ve tekrarla';

  @override
  String get sequenceMemoryRules =>
      '1. Yanan karelerin sırasını izle\n2. Aynı sırayla dokunarak tekrarla\n3. Her seviye bir kare ekler\n4. Bir hata oyunu bitirir\n5. Ne kadar ileri gidebilirsin?';

  @override
  String get selectLevel => 'Seviye Seç';

  @override
  String get accuracy => 'Doğruluk';

  @override
  String get match => 'Eşleşme?';

  @override
  String get yes => 'Evet';

  @override
  String get getReady => 'Hazır Ol';

  @override
  String get yourTurn => 'Senin Sıran';

  @override
  String get wrong => 'Yanlış!';

  @override
  String get completed => 'Tamamlandı!';

  @override
  String get sequenceLength => 'Sıra';

  @override
  String get chimpTestTitle => 'Şempanze Testi';

  @override
  String get chimpTestDescription =>
      'Sayı konumlarını hatırla ve sırayla dokun';

  @override
  String get chimpTestRules =>
      '1. Sayılar ızgarada kısa süre görünür\n2. Gizlendikten sonra artan sırayla dokun (1, 2, 3...)\n3. Her tur bir sayı ekler\n4. Yanlış dokunuş oyunu bitirir\n5. Şempanzelerin insanları geçtiği araştırmaya dayalı';

  @override
  String get tapNumber => 'Sayıya dokun';

  @override
  String get pictureMemoryTitle => 'Resim Hafızası';

  @override
  String get pictureMemoryDescription => 'Hangi resimleri gördüğünü hatırla';

  @override
  String get pictureMemoryRules =>
      '1. Resimler tek tek görünür\n2. Bu resmi daha önce görüp görmediğine karar ver\n3. İlk kez ise \'Yeni\' dokun\n4. Daha önce gördüysen \'Gördüm\' dokun\n5. 3 canın var - hata yapma!';

  @override
  String get haveYouSeenThis => 'Bunu gördün mü?';

  @override
  String get newPicture => 'Yeni';

  @override
  String get seenBefore => 'Gördüm';

  @override
  String get objectLocationTitle => 'Nesne Konumu';

  @override
  String get objectLocationDescription => 'Nesnelerin nerede olduğunu hatırla';

  @override
  String get objectLocationRules =>
      '1. Izgaradaki nesne konumlarını ezberle\n2. Kaybolduktan sonra geri koy\n3. Nesne yerleştirmek için hücrelere dokun\n4. Her tur daha fazla nesne ekler\n5. İlerlemek için hepsini doğru yerleştir';

  @override
  String get placeObjects => 'Nesneleri konumlarına yerleştir';
}
