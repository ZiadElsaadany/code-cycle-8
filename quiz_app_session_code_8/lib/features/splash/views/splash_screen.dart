import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/core/utils/app_images.dart';
import 'package:quiz_app_session_code_8/features/home/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(
      seconds: 3
    ) , ( ) {

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (C) {
        return HomeScreen();
      } ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(AppImages.up,
            height: 252,
              width: 265,
            ),
          ),
          Spacer(),

          Center(
            child: JelloIn(
              child: Image.asset(AppImages.logo,
              height:59,
                width: 231,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment:Alignment.bottomRight,
            child: Image.asset(AppImages.down,
              height: 252,
              width: 265,
            ),
          ),
        ],
      ),
    );
  }
}
