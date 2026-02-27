import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // Futuristic Color Palette
  static const Color backgroundBlack = Color(0xFF050510);
  static const Color backgroundDarkBlue = Color(0xFF0B1026);
  static const Color primaryNeonCyan = Color(0xFF00F0FF);
  static const Color secondaryElectricPurple = Color(0xFF7B2CBF);
  static const Color accentLaserPink = Color(0xFFFF0055);
  static const Color surfaceDarkGlass = Color(0xFF121629);
  static const Color textWhite = Color(0xFFFFFFFF);
  static const Color textGrey = Color(0xFFB0B0C0);

  static ThemeData get futuristicTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgroundBlack,
      colorScheme: const ColorScheme.dark(
        primary: primaryNeonCyan,
        secondary: secondaryElectricPurple,
        surface: surfaceDarkGlass,
        error: accentLaserPink,
        onPrimary: Colors.black,
        onSecondary: Colors.white,
        onSurface: textWhite,
        // background is deprecated, use surface instead
        // background: backgroundBlack,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.orbitron(fontSize: 32, fontWeight: FontWeight.bold, color: textWhite),
        displayMedium: GoogleFonts.orbitron(fontSize: 28, fontWeight: FontWeight.bold, color: textWhite),
        displaySmall: GoogleFonts.orbitron(fontSize: 24, fontWeight: FontWeight.w600, color: textWhite),
        headlineLarge: GoogleFonts.orbitron(fontSize: 22, fontWeight: FontWeight.w600, color: textWhite),
        headlineMedium: GoogleFonts.orbitron(fontSize: 20, fontWeight: FontWeight.w600, color: textWhite),
        headlineSmall: GoogleFonts.orbitron(fontSize: 18, fontWeight: FontWeight.w600, color: primaryNeonCyan),
        titleLarge: GoogleFonts.rajdhani(fontSize: 20, fontWeight: FontWeight.bold, color: textWhite),
        titleMedium: GoogleFonts.rajdhani(fontSize: 18, fontWeight: FontWeight.w600, color: textWhite),
        titleSmall: GoogleFonts.rajdhani(fontSize: 16, fontWeight: FontWeight.w600, color: textGrey),
        bodyLarge: GoogleFonts.rajdhani(fontSize: 16, fontWeight: FontWeight.normal, color: textWhite),
        bodyMedium: GoogleFonts.rajdhani(fontSize: 14, fontWeight: FontWeight.normal, color: textGrey),
        bodySmall: GoogleFonts.rajdhani(fontSize: 12, fontWeight: FontWeight.normal, color: textGrey),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        titleTextStyle: GoogleFonts.orbitron(fontSize: 20, fontWeight: FontWeight.bold, color: textWhite),
        iconTheme: const IconThemeData(color: primaryNeonCyan),
      ),
      cardTheme: CardThemeData(
        color: surfaceDarkGlass,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: primaryNeonCyan.withValues(alpha: 0.1), width: 1),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryNeonCyan,
          foregroundColor: Colors.black,
          elevation: 10,
          shadowColor: primaryNeonCyan.withValues(alpha: 0.5),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: GoogleFonts.orbitron(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: primaryNeonCyan,
          side: const BorderSide(color: primaryNeonCyan, width: 2),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
          textStyle: GoogleFonts.orbitron(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceDarkGlass,
        contentPadding: const EdgeInsets.all(16),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16), borderSide: BorderSide.none),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.white.withValues(alpha: 0.1)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: primaryNeonCyan, width: 2),
        ),
        labelStyle: GoogleFonts.rajdhani(color: textGrey),
        hintStyle: GoogleFonts.rajdhani(color: textGrey.withValues(alpha: 0.5)),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: backgroundDarkBlue,
        selectedItemColor: primaryNeonCyan,
        unselectedItemColor: textGrey,
        selectedLabelStyle: GoogleFonts.rajdhani(fontSize: 12, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.rajdhani(fontSize: 12, fontWeight: FontWeight.w600),
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primaryNeonCyan,
        foregroundColor: Colors.black,
        elevation: 10,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      ),
    );
  }
}
