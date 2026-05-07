import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../utils/app_colors.dart';
import 'term_list_screen.dart' show TermItem;

class TermDetailScreen extends StatefulWidget {
  final TermItem item;

  const TermDetailScreen({super.key, required this.item});

  @override
  State<TermDetailScreen> createState() => _TermDetailScreenState();
}

class _TermDetailScreenState extends State<TermDetailScreen> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    _loadFavorite();
    _saveRecent();
  }

  // ⭐ FAVORITE CHECK
  Future<void> _loadFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    final favs = prefs.getStringList('favorites') ?? [];

    setState(() {
      isFavorite = favs.contains(widget.item.title);
    });
  }

  // ⭐ FAVORITE TOGGLE
  Future<void> _toggleFavorite() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> favs = prefs.getStringList('favorites') ?? [];

    if (favs.contains(widget.item.title)) {
      favs.remove(widget.item.title);
    } else {
      favs.add(widget.item.title);
    }

    await prefs.setStringList('favorites', favs);

    setState(() {
      isFavorite = !isFavorite;
    });
  }

  // 🕓 RECENT SAVE
  Future<void> _saveRecent() async {
    final prefs = await SharedPreferences.getInstance();
    List<String> recents = prefs.getStringList('recents') ?? [];

    recents.remove(widget.item.title);
    recents.insert(0, widget.item.title);

    if (recents.length > 20) {
      recents = recents.take(20).toList();
    }

    await prefs.setStringList('recents', recents);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBg(context),
      appBar: AppBar(
        backgroundColor: AppColors.pageBg(context),
        foregroundColor: AppColors.primaryGreen,
        elevation: 0,
        scrolledUnderElevation: 0,
        title: Text(
          widget.item.title,
          textScaler: const TextScaler.linear(1.0),
          style: const TextStyle(
            color: AppColors.primaryGreen,
            fontSize: 27,
            fontWeight: FontWeight.w800,
          ),
        ),

        // ⭐ FAVORITE BUTTON
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: Colors.red,
            ),
            onPressed: _toggleFavorite,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 28, 30, 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.item.title,
              textScaler: const TextScaler.linear(1.0),
              style: const TextStyle(
                color: AppColors.primaryGreen,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              widget.item.description,
              textAlign: TextAlign.justify,
              textScaler: const TextScaler.linear(1.0),
              style: const TextStyle(
                color: Color(0xFF315B32),
                fontSize: 21,
                height: 1.65,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}