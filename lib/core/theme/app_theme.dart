import 'package:flutter/material.dart';
import 'package:project_init/constants/app_colors.dart';

ThemeData appTheme() => ThemeData(
      fontFamily: 'HelveticaNeue',
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryDark,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 12),
          shape: const RoundedRectangleBorder(),
          backgroundColor: AppColors.primaryDark,
          foregroundColor: AppColors.colorWhite,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
          backgroundColor: AppColors.black,
          foregroundColor: AppColors.colorWhite,
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        ),
      ),
      scaffoldBackgroundColor: AppColors.colorWhite,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),
        bodySmall: TextStyle(fontSize: 11),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        bodyMedium: TextStyle(fontSize: 12),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: AppColors.black,
        foregroundColor: AppColors.colorWhite,
        extendedPadding:
            const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      ),
    );
