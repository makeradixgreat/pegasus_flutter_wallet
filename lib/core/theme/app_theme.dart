import 'package:flutter/material.dart';
import 'package:pegasus_wallet/core/theme/app_colors.dart';

enum AppTheme { darkTheme }


const Color _seedColor = Color(0xFF4568FF);

final ColorScheme _lightColorScheme = ColorScheme.fromSeed(
  seedColor: _seedColor,
  brightness: Brightness.light,
);
final ColorScheme _darkColorScheme = ColorScheme.fromSeed(
  seedColor: _seedColor,
  brightness: Brightness.dark,
);

final Map<AppTheme, ThemeData> appThemeData = {
  AppTheme.darkTheme: ThemeData(
    useMaterial3: true,
    colorScheme: _darkColorScheme,
    cardColor: const Color(0xFF2C2D31),
    scaffoldBackgroundColor: const Color(0xFF212021),
    appBarTheme: const AppBarTheme(
      scrolledUnderElevation: 0,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      backgroundColor: Color(0xFF1A1A1A),
      shadowColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.white),
    ),
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: const EdgeInsets.symmetric(vertical: 18.0),
      filled: true,
      fillColor: const Color(0xFF1A1A1A),
      prefixIconColor: Colors.white,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          width: 0.5,
          color: Colors.white,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
        borderSide: const BorderSide(
          width: 0.5,
          color: Colors.white,
        ),
      ),
      hintStyle: const TextStyle(color: Colors.grey),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.blueAccent,
        foregroundColor: Colors.white,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: AppColors.blueAccent,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      titleLarge: const TextStyle(
        color: Colors.white,
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
      ),
      titleMedium: const TextStyle(
        color: Colors.white70,
        fontSize: 16.0,
      ),
      bodyMedium: TextStyle(
        color: _lightColorScheme.onSurface,
        fontSize: 14.0,
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: Color(0xFF0F0F0F),
      selectedItemColor: Color(0xFF4C6EF5),
    ),
  ),
};
