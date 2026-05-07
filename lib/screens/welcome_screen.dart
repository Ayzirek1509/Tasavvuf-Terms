import 'package:flutter/material.dart';
import '../utils/app_colors.dart';
import 'home_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pageBg(context),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              const SizedBox(height: 70),
              Text(
                'Ilovada',
                textScaler: const TextScaler.linear(1.0),
                style: TextStyle(
                  fontSize: 42,
                  fontWeight: FontWeight.bold,
                  color: AppColors.stroke(context),
                ),
              ),
              const SizedBox(height: 24),
              Text(
                'Tasavvufga oid atamalarning ma\'nolari\nhamda oyat va hadislar asosidagi\ndalillarni topishingiz mumkin',
                textAlign: TextAlign.center,
                textScaler: const TextScaler.linear(1.0),
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.mainText(context),
                  height: 1.55,
                ),
              ),
              Expanded(
                child: Center(
                  child: Image.asset(
                    'assets/images/pattern.png',
                    width: 245,
                    height: 245,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (_) => const HomeScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text(
                    'Boshlash',
                    textScaler: TextScaler.linear(1.0),
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}
