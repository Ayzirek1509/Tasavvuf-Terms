class Hadith {
  final String text;
  final String source;

  const Hadith({required this.text, required this.source});

  factory Hadith.fromJson(Map<String, dynamic> json) {
    return Hadith(
      text: json['text']?.toString() ?? '',
      source: json['source']?.toString() ?? '',
    );
  }
}
