import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/features/home/views/widgets/custom_app_bar.dart';
import 'package:quiz_app/features/home/views/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        toolbarHeight : 110,
        // backgroundColor: const Color(0xff006672),
        flexibleSpace : const CustomAppBar()
      ),
      body :const HomePageBody()
    );
  }
}
