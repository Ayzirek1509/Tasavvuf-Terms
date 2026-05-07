import 'package:flutter/material.dart';
import '../models/category_item.dart';

/// Ikonka ranglari - hammasi yashil-oltin gammada (bir-biriga mos)
class CategoriesData {
  // Asosiy 3 rang - bir-biriga mos
  static const Color _gold = Color(0xFFD4AF5C);
  static const Color _green = Color(0xFF8BB87C);
  static const Color _cream = Color(0xFFEAD9A8);

  static const List<CategoryItem> categories = [
    CategoryItem(
      title: 'Barcha atamalar',
      icon: Icons.assignment_outlined,
      iconColor: _gold,
    ),
    CategoryItem(
      title: 'Qur\'onda kelgan\natamalar',
      icon: Icons.menu_book_rounded,
      iconColor: _green,
    ),
    CategoryItem(
      title: 'Hadisda kelgan\natamalar',
      icon: Icons.auto_stories_rounded,
      iconColor: _cream,
    ),
    CategoryItem(
      title: 'Tariqatlar',
      icon: Icons.star_rounded,
      iconColor: _gold,
    ),
    CategoryItem(
      title: 'Tasavvuf haqida',
      icon: Icons.local_florist_rounded,
      iconColor: _green,
    ),
    CategoryItem(
      title: 'Tasavvufga oid asarlar',
      icon: Icons.library_books_rounded,
      iconColor: _cream,
    ),
    CategoryItem(
      title: 'Esda qolish',
      icon: Icons.psychology_rounded,
      iconColor: _gold,
    ),
    CategoryItem(
      title: 'Shaxsiy kundalik',
      icon: Icons.edit_note_rounded,
      iconColor: _green,
    ),
  ];
}
