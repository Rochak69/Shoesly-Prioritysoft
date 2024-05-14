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
        foregroundColor: AppColors.primaryDark,
      ),
      textTheme: const TextTheme(
        headlineLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
        headlineMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
        headlineSmall: TextStyle(fontSize: 14, fontWeight: FontWeight.w700),

        //Body Small
        bodySmall: TextStyle(fontSize: 11),
        bodyLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),

        //Body Medium
        bodyMedium: TextStyle(fontSize: 12),

        //Body Large
        // bodyLarge: GoogleFonts.aBeeZee(
        //     fontSize: 19, fontWeight: FontWeight.w800, color: Colors.white),
      ),
    );
