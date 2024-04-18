import 'package:bill_app_code_cycle_8/features/home/views/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BellaApp());
}

class BellaApp extends StatelessWidget {
  const BellaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
