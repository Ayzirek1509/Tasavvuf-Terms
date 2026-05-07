import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class LiteratureScreen extends StatelessWidget {
  const LiteratureScreen({super.key});

  final List<String> _items = const [
    'Tasavvuf Lug\'ati',
    'Tasavvufga Kirish',
    'Tasavvuf Tarixi',
    'Tasavvuf va Hozirgi Zamon',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Foydalanilgan adabiyotlar'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 34),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE8F0F2), Color(0xFFF5EFE0)],
              ),
            ),
            child: Center(
              child: Image.asset('assets/images/drawer_literature.png', height: 130, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(_items.length, (index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Text('${index + 1}. ${_items[index]}', style: const TextStyle(fontSize: 18, color: AppColors.textDark)),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
