import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getdemo/core/app.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      getPages: AppRoutes().pages,
      initialRoute: AppRoutes.home,
      title: 'get_demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.robotoMono().fontFamily,
        colorScheme: ColorScheme.light(
          primary: Color(0xFFB5179E), // Rich magenta
          onPrimary: Color(0xFF1E1E1E), // Dark neutral text on magenta

          secondary: Color(0xFF7209B7), // Deep violet
          onSecondary: Color(0xFFF5F5F5), // Soft light gray text on violet

          surface: Color(0xFFF5F0F6), // Pale lavender surface
          onSurface: Color(0xFF121212), // Strong readable black on surface

          error: Color(0xFFBA1A1A), // Muted but noticeable red
          onError: Color(0xFFFAFAFA), // Light neutral on error

          tertiary: Color(0xFFD0A5D6), // Muted pastel magenta/lavender
          onTertiary: Color(0xFF2C2C2C),
        ),
      ),
    );
  }
}
