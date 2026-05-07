import 'dart:convert';
import 'dart:math';
import 'package:flutter/services.dart' show rootBundle;
import '../models/hadith.dart';

class HadithService {
  static List<Hadith>? _cachedHadiths;

  static Future<List<Hadith>> loadAll() async {
    if (_cachedHadiths != null) return _cachedHadiths!;
    try {
      final jsonString = await rootBundle.loadString('assets/hadiths.json');
      final List<dynamic> jsonList = json.decode(jsonString);
      _cachedHadiths = jsonList
          .map((e) => Hadith.fromJson(e as Map<String, dynamic>))
          .toList();
      return _cachedHadiths!;
    } catch (e) {
      return [];
    }
  }

  static Future<Hadith?> getRandom() async {
    final list = await loadAll();
    if (list.isEmpty) return null;
    return list[Random().nextInt(list.length)];
  }
}
