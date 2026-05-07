import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: const Text('Dastur haqida'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 38),
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFE8F0F2), Color(0xFFF5EFE0)],
              ),
            ),
            child: Center(
              child: Image.asset('assets/images/drawer_about.png', height: 120, fit: BoxFit.contain),
            ),
          ),
          const SizedBox(height: 30),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Bu ilovada tasavvufiy atamalarni Qur\'onda va Hadisda kelgan yordam beradi. '
              'Ilova foydalanuvchilarga Qur\'on va Hadisdagi atamalarni qulay tarzda taqdim etadi.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 17, color: AppColors.textDark, height: 1.6),
            ),
          ),
        ],
      ),
    );
  }
}
