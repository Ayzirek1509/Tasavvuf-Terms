/// Audio darslar uchun model
class AudioLesson {
  final String number; // "1", "1.2", "3.5"
  final String topic;
  final String assetPath;

  const AudioLesson({
    required this.number,
    required this.topic,
    required this.assetPath,
  });
}

/// 1-BOB: Tariqatlarning shakllanish tarixi (14 ta audio)
const List<AudioLesson> bob1Audios = [
  AudioLesson(
    number: '1',
    topic: 'TARIQATLAR VUJUDGA KELISH TARIXI VA TUZILMASI',
    assetPath: 'assets/audios/tasavvuf.mp3',
  ),
  AudioLesson(
    number: '2',
    topic: 'FUTUVVAT UYUSHMALARI. Futuvvatning mohiyati',
    assetPath: 'assets/audios/2_audio.mp3',
  ),
  AudioLesson(
    number: '2.1',
    topic: 'FUTUVVAT UYUSHMALARI. Islom dunyosida futuvvat uyushmalariga siyosiy tus berilishi',
    assetPath: 'assets/audios/2_1_audio.mp3',
  ),
  AudioLesson(
    number: '3',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. O\'n ikki tariqat tushunchasi',
    assetPath: 'assets/audios/2_2_audio.mp3',
  ),
  AudioLesson(
    number: '3.1',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar',
    assetPath: 'assets/audios/2_3_audio.mp3',
  ),
  AudioLesson(
    number: '3.2',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/2_4_audio.mp3',
  ),
  AudioLesson(
    number: '3.3',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/2_5_audio.mp3',
  ),
  AudioLesson(
    number: '3.4',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/2_6_audio.mp3',
  ),
  AudioLesson(
    number: '3.5',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/2_7_audio.mp3',
  ),
  AudioLesson(
    number: '3.6',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/2_8_audio.mp3',
  ),
  AudioLesson(
    number: '3.7',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/2_9_audio.mp3',
  ),
  AudioLesson(
    number: '3.8',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/3_audio.mp3',
  ),
  AudioLesson(
    number: '3.9',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/3_1_audio.mp3',
  ),
  AudioLesson(
    number: '3.10',
    topic: 'DASTLABKI TARIQAT BIRLASHMALARI. Dastlabki tariqatlar (davomi)',
    assetPath: 'assets/audios/3_2_audio.mp3',
  ),
];

/// 2-BOB: Tariqatlarning mintaqalar bo'yicha xususiyatlari (9 ta audio)
const List<AudioLesson> bob2Audios = [
  AudioLesson(
    number: '1',
    topic: 'MDHDA TARIQATLAR, KICHIK OSIYODA TASAVVUF, TURKIYA TARIQATLARI',
    assetPath: 'assets/audios/3_3_audio.mp3',
  ),
  AudioLesson(
    number: '1.2',
    topic: 'MDHDA TARIQATLAR, KICHIK OSIYODA TASAVVUF, TURKIYA TARIQATLARI (davomi)',
    assetPath: 'assets/audios/3_4_audio.mp3',
  ),
  AudioLesson(
    number: '1.3',
    topic: 'MDHDA TARIQATLAR, KICHIK OSIYODA TASAVVUF, TURKIYA TARIQATLARI (davomi)',
    assetPath: 'assets/audios/3_5_audio.mp3',
  ),
  AudioLesson(
    number: '2',
    topic: 'Tariqatlarning mintaqalar bo\'yicha o\'ziga xos xususiyatlari. Xalvatiya tariqatining tarmoqlari',
    assetPath: 'assets/audios/3_6_audio.mp3',
  ),
  AudioLesson(
    number: '2.1',
    topic: 'Tariqatlarning mintaqalar bo\'yicha o\'ziga xos xususiyatlari. Xalvatiya tariqatining tarmoqlari (davomi)',
    assetPath: 'assets/audios/3_7_audio.mp3',
  ),
  AudioLesson(
    number: '2.2',
    topic: 'Tariqatlarning mintaqalar bo\'yicha o\'ziga xos xususiyatlari. Xalvatiya tariqatining tarmoqlari (davomi)',
    assetPath: 'assets/audios/3_8_audio.mp3',
  ),
  AudioLesson(
    number: '3',
    topic: 'ARABISTON YARIM OROLIDA TASAVVUF. SHIMOLIY AFRIKADA TARIQATLAR',
    assetPath: 'assets/audios/3_9_audio.mp3',
  ),
  AudioLesson(
    number: '4',
    topic: 'HINDISTON-POKISTON SUBKONTINENTIDA TASAVVUF. ERONDA TASAVVUF (SHIA TARIQATLARI)',
    assetPath: 'assets/audios/3_10_audio.mp3',
  ),
  AudioLesson(
    number: '4.1',
    topic: 'HINDISTON-POKISTON SUBKONTINENTIDA TASAVVUF. ERONDA TASAVVUF (SHIA TARIQATLARI) davomi',
    assetPath: 'assets/audios/3_11_audio.mp3',
  ),
];

/// 3-BOB: Globallashuv va tariqatlar (13 ta audio)
const List<AudioLesson> bob3Audios = [
  AudioLesson(
    number: '1',
    topic: 'GLOBALLASHUV VA TARIQATLAR. Tasavvuf va globallashuv jarayonlari',
    assetPath: 'assets/audios/3_12_audio.mp3',
  ),
  AudioLesson(
    number: '1.2',
    topic: 'GLOBALLASHUV VA TARIQATLAR. Tasavvufning Yevropaga targalish omillari',
    assetPath: 'assets/audios/3_13_audio.mp3',
  ),
  AudioLesson(
    number: '1.3',
    topic: 'GLOBALLASHUV VA TARIQATLAR. Musulmon Sharqida tarigatlarning qayta jonlanishi',
    assetPath: 'assets/audios/4_audio.mp3',
  ),
  AudioLesson(
    number: '2',
    topic: 'NEOSUFIZM TUSHUNCHASI VA UNING XUSUSIYATLARI. New age va tariqatlar faoliyati',
    assetPath: 'assets/audios/5_audio.mp3',
  ),
  AudioLesson(
    number: '2.1',
    topic: 'NEOSUFIZM TUSHUNCHASI VA UNING XUSUSIYATLARI. Tariqatlarning transnatsional uyushmalarga aylanib borishi',
    assetPath: 'assets/audios/6_audio.mp3',
  ),
  AudioLesson(
    number: '2.2',
    topic: 'NEOSUFIZM TUSHUNCHASI VA UNING XUSUSIYATLARI. Xalqaro Sufiylik tariqati',
    assetPath: 'assets/audios/7_audio.mp3',
  ),
  AudioLesson(
    number: '3',
    topic: 'TARIQATCHILIK TUSHUNCHASI VA UNING TASAVVUFDAN FARQLI JIHATLARI. Mumtoz tasavvuf va zamonaviy tariqatchilik orasidagi farqlar',
    assetPath: 'assets/audios/8_audio.mp3',
  ),
  AudioLesson(
    number: '3.1',
    topic: 'TARIQATCHILIK TUSHUNCHASI VA UNING TASAVVUFDAN FARQLI JIHATLARI. Nursafardiya - neosufiy birlashmasi namunasi',
    assetPath: 'assets/audios/9_audio.mp3',
  ),
  AudioLesson(
    number: '4',
    topic: 'TASAVVUFGA OID MUHIM TUSHUNCHALAR: ZIKR VA SAMO\', SILSILA, XONAQOH VA ZOVIYa, XIRQA. Zikr va samo\'',
    assetPath: 'assets/audios/10_audio.mp3',
  ),
  AudioLesson(
    number: '4.1',
    topic: 'TASAVVUFGA OID MUHIM TUSHUNCHALAR: ZIKR VA SAMO\', SILSILA, XONAQOH VA ZOVIYa, XIRQA. Silsila',
    assetPath: 'assets/audios/11_audio.mp3',
  ),
  AudioLesson(
    number: '4.2',
    topic: 'TASAVVUFGA OID MUHIM TUSHUNCHALAR: ZIKR VA SAMO\', SILSILA, XONAQOH VA ZOVIYa, XIRQA. Xonaqoh va zoviya',
    assetPath: 'assets/audios/12_audio.mp3',
  ),
  AudioLesson(
    number: '4.3',
    topic: 'TASAVVUFGA OID MUHIM TUSHUNCHALAR: ZIKR VA SAMO\', SILSILA, XONAQOH VA ZOVIYa, XIRQA. Xirqa',
    assetPath: 'assets/audios/13_audio.mp3',
  ),
  AudioLesson(
    number: '5',
    topic: 'GLOSSARIY',
    assetPath: 'assets/audios/14_audio.mp3',
  ),
];