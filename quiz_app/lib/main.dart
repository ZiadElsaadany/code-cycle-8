import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/home/views/home_page.dart';
import 'features/splash/views/splash_screen.dart';

void main ( )   {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

        debugShowCheckedModeBanner: false,
        theme:ThemeData(
          fontFamily: GoogleFonts.almarai().fontFamily
        ),
      home: const SplashScreen()
    );
  }
}
