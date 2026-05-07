import 'dart:math' as math;
import 'package:flutter/material.dart';

/// Islomiy 8-burchakli yulduz naqsh ikonkasi
class IslamicStarIcon extends StatelessWidget {
  final double size;
  final Color color;
  final Color? centerColor;

  const IslamicStarIcon({
    super.key,
    this.size = 48,
    this.color = Colors.white,
    this.centerColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: CustomPaint(
        painter: _IslamicStarPainter(
          color: color,
          centerColor: centerColor,
        ),
      ),
    );
  }
}

class _IslamicStarPainter extends CustomPainter {
  final Color color;
  final Color? centerColor;

  _IslamicStarPainter({required this.color, this.centerColor});

  @override
  void paint(Canvas canvas, Size size) {
    final cx = size.width / 2;
    final cy = size.height / 2;
    final r1 = size.width * 0.46; // tashqi radius
    final r2 = size.width * 0.30; // ichki radius

    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill
      ..isAntiAlias = true;

    // 8-burchakli yulduz (16 nuqta - tashqi va ichki almashib)
    final path = Path();
    for (int i = 0; i < 16; i++) {
      final angle = (i * 22.5 - 90) * math.pi / 180;
      final r = i.isEven ? r1 : r2;
      final x = cx + r * math.cos(angle);
      final y = cy + r * math.sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();
    canvas.drawPath(path, paint);

    // Markazda kichik doira (ixtiyoriy)
    if (centerColor != null) {
      final circlePaint = Paint()
        ..color = centerColor!
        ..style = PaintingStyle.fill
        ..isAntiAlias = true;
      canvas.drawCircle(Offset(cx, cy), size.width * 0.13, circlePaint);
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
