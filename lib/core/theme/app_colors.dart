import 'package:flutter/material.dart';

class AppColors {
  // Brand Colors
  static const Color primaryCyan = Color(0xFF1CDCF7);
  
  // Dark Mode colors
  static const Color darkBgTop = Color(0xFF0A2B30);
  static const Color darkBgBottom = Color(0xFF040F11);
  static const Color darkInputFill = Color(0xFF162D31);
  static const Color darkInputBorder = Color(0xFF1F3F45);
  static const Color darkCardFill = Color(0xFF0A1416);
  static const Color darkTextPrimary = Colors.white;
  static const Color darkTextMuted = Color(0xFF8F9E9F);

  // Light Mode colors
  static const Color lightBgTop = Color(0xFFF0F9FA);
  static const Color lightBgBottom = Color(0xFFFFFFFF);
  static const Color lightInputFill = Color(0xFFF1F5F5);
  static const Color lightInputBorder = Color(0xFFE0E7E8);
  static const Color lightCardFill = Colors.white;
  static const Color lightTextPrimary = Color(0xFF1A1C1E);
  static const Color lightTextMuted = Color(0xFF6B7280);

  // Deprecated/Legacy names (for temporary compatibility)
  static const Color bgTopTeal = darkBgTop;
  static const Color bgBottomDark = darkBgBottom;
  static const Color inputFill = darkInputFill;
  static const Color textWhite = darkTextPrimary;
  static const Color textMuted = darkTextMuted;

  static LinearGradient getBackgroundGradient(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [darkBgTop, darkBgBottom],
      );
    }
    return const LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [lightBgTop, lightBgBottom],
    );
  }

  // Home Page Glow Colors
  static const Color glowTeal = Color(0xFF10464E);
  static const Color glowBlue = Color(0xFF03101A);
}
