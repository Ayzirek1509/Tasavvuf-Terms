import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import '../screens/term_list_screen.dart' show TermItem;

class JsonLoader {
  /// terms.json, quron_terms.json, hadis_terms.json kabi
  /// {term, definition} formatidagi JSON fayllarni o'qiydi.
  static Future<List<TermItem>> loadTerms(String path) async {
    final raw = await rootBundle.loadString(path);
    final List<dynamic> data = json.decode(raw);

    final list = data.map<TermItem>((e) {
      final m = e as Map<String, dynamic>;
      return TermItem(
        (m['term'] ?? '').toString(),
        (m['definition'] ?? '').toString(),
      );
    }).toList();

    // Alifbo tartibida saralash
    list.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
    return list;
  }

  /// tariqatlar.json, tasavvuf_haqqida.json kabi
  /// {name, description} formatidagi JSON fayllarni o'qiydi.
  static Future<List<TermItem>> loadInfo(String path) async {
    final raw = await rootBundle.loadString(path);
    final List<dynamic> data = json.decode(raw);

    final list = data.map<TermItem>((e) {
      final m = e as Map<String, dynamic>;
      return TermItem(
        (m['name'] ?? '').toString(),
        (m['description'] ?? '').toString(),
      );
    }).toList();

    list.sort((a, b) => a.title.toLowerCase().compareTo(b.title.toLowerCase()));
    return list;
  }
}