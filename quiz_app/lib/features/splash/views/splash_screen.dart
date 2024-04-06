
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/views/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(
      seconds: 3
    ), () {

      Navigator.push(context, MaterialPageRoute(builder: (c) {
        return    HomePage();
      } ));

    }  ) ;

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [

          Align(
            alignment: Alignment.topLeft,
            child: Image.asset("assets/images/UP (1).png" ,
            height: 256,
            ),
          ),
          Spacer(),

          JelloIn(
            child: Center(
              child: Image.asset("assets/images/logo.png" ,
              height: 59 ,
                width: 231,
              ),
            ),
          ),
          Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: Image.asset("assets/images/down.png",
              height: 256,

            ),
          ),

        ],
      ),
    );
  }
}
