import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryCyan,
      scaffoldBackgroundColor: AppColors.lightBgBottom,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryCyan,
        secondary: AppColors.primaryCyan,
        surface: AppColors.lightBgBottom,
        surfaceContainerHighest: AppColors.lightInputFill,
        onSurface: AppColors.lightTextPrimary,
        onSurfaceVariant: AppColors.lightTextMuted,
        error: Colors.red,
      ),
      textTheme: GoogleFonts.interTextTheme().apply(
        bodyColor: AppColors.lightTextPrimary,
        displayColor: AppColors.lightTextPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: AppColors.lightTextPrimary,
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryCyan,
      scaffoldBackgroundColor: AppColors.darkBgBottom,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryCyan,
        secondary: AppColors.primaryCyan,
        surface: AppColors.darkBgBottom,
        surfaceContainerHighest: AppColors.darkInputFill,
        onSurface: AppColors.darkTextPrimary,
        onSurfaceVariant: AppColors.darkTextMuted,
        error: Colors.red,
      ),
      textTheme: GoogleFonts.interTextTheme().apply(
        bodyColor: AppColors.darkTextPrimary,
        displayColor: AppColors.darkTextPrimary,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        foregroundColor: AppColors.darkTextPrimary,
      ),
    );
  }
}
