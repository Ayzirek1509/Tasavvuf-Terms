import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

/// Hadis ma'lumotlari assets/data/hadiths.json dan yuklanadi.
/// Dastlab bo'sh ro'yxat bo'lmasligi uchun vaqtinchalik bitta hadis bilan boshlanadi.
List<Map<String, String>> hadithsList = [
  {
    'short': 'Hadislar yuklanmoqda...',
    'full': 'Hadislar yuklanmoqda...',
    'source': '',
  },
];

/// JSON fayldan hadislarni yuklab, hadithsList ni to'ldiradi.
/// Bu funksiya main.dart da runApp dan oldin chaqirilishi kerak.
Future<void> loadHadiths() async {
  try {
    final raw = await rootBundle.loadString('assets/data/hadiths.json');
    final List<dynamic> data = json.decode(raw);

    hadithsList = data.map<Map<String, String>>((e) {
      final m = e as Map<String, dynamic>;
      final fullText = (m['text'] ?? '').toString();
      final source = (m['source'] ?? '').toString();

      // Qisqa versiya - birinchi 100 ta belgi
      final shortText = fullText.length > 100
          ? '${fullText.substring(0, 100)}...'
          : fullText;

      return {
        'short': shortText,
        'full': fullText,
        'source': source,
      };
    }).toList();
  } catch (e) {
    // ignore: avoid_print
    print('Hadislarni yuklashda xato: $e');
  }
}