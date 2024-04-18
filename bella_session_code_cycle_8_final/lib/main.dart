import 'package:bella_session_code_cycle_8_final/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Bella());
}

class Bella extends StatelessWidget {
  const Bella({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
