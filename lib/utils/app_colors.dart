import 'package:flutter/material.dart';

class AppColors {
  static const Color background = Color(0xFFF5EFE0);
  static const Color primaryGreen = Color(0xFF2D5F3F);
  static const Color cardGreen = Color(0xFF0F4A25);
  static const Color lightGreen = Color(0xFF4A8B5C);
  static const Color textDark = Color(0xFF1A1A1A);
  static const Color textLight = Colors.white;
  static const Color textSecondary = Color(0xFF555555);
  static const Color accentYellow = Color(0xFFF4C430);
  static const Color buttonText = Colors.white;
  static const Color darkBackground = Color(0xFF111A14);
  static const Color darkPanel = Color(0xFF1D261F);
  static const Color darkCard = Color(0xFF133B22);
  static const Color darkPrimary = Color(0xFF1F4D2E);

  static get darkCream => null;

  static Color? get darkText => null;

  static bool isDark(BuildContext context) => Theme.of(context).brightness == Brightness.dark;
  static Color pageBg(BuildContext context) => isDark(context) ? darkBackground : background;
  static Color panelBg(BuildContext context) => isDark(context) ? darkPanel : background;
  static Color mainText(BuildContext context) => isDark(context) ? Colors.white : textDark;
  static Color secondaryText(BuildContext context) => isDark(context) ? Colors.white70 : textSecondary;
  static Color cardBg(BuildContext context) => isDark(context) ? darkCard : cardGreen;
  static Color stroke(BuildContext context) => isDark(context) ? const Color(0xFF75B884) : lightGreen;
}
