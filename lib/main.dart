import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tasavvuf Atamalari',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF2E7D32)),
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEDE8DC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              const SizedBox(height: 80),
              const Text(
                'Ilovada',
                style: TextStyle(
                  fontSize: 44,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2E7D32),
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                "Tasavvufga oid atamalarning ma'nolari hamda oyat va hadislar asosidagi dalillarni topishingiz mumkin",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black87,
                  height: 1.55,
                ),
              ),
              const Spacer(),
              SizedBox(
                width: 200,
                height: 200,
                child: CustomPaint(
                  painter: _IslamicStarPainter(),
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2E7D32),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Boshlash',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 44),
            ],
          ),
        ),
      ),
    );
  }
}

class _IslamicStarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);

    // Outer 8-pointed star (dark green)
    _drawSquareStar(canvas, center, size.width * 0.46, const Color(0xFF2E7D32));

    // Inner 8-pointed star (lighter green)
    _drawSquareStar(canvas, center, size.width * 0.34, const Color(0xFF43A047));

    // Center circle (gold/yellow)
    canvas.drawCircle(
      center,
      size.width * 0.09,
      Paint()..color = const Color(0xFFFDD835),
    );

    // Gold circle half-shadow for depth
    canvas.drawCircle(
      center,
      size.width * 0.09,
      Paint()
        ..color = const Color(0xFFE6C200)
        ..style = PaintingStyle.stroke
        ..strokeWidth = size.width * 0.012,
    );
  }

  void _drawSquareStar(Canvas canvas, Offset center, double half, Color color) {
    final paint = Paint()..color = color;
    final rect = Rect.fromCenter(center: Offset.zero, width: half * 2, height: half * 2);

    canvas.save();
    canvas.translate(center.dx, center.dy);
    canvas.drawRect(rect, paint);
    canvas.rotate(pi / 4);
    canvas.drawRect(rect, paint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
