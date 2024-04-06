import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/features/home/data/models/question_model.dart';
import 'package:quiz_app_session_code_8/features/splash/views/splash_screen.dart';

import 'features/home/views/home_screen.dart';

void main( )   {

  // Person person1 = Person(height: 10, weight: 20, age: 22);
  // Person person2 = Person(height: 10, weight: 20, age: 22);
  // Person person3 = Person(height: 10, weight: 20, age: 22);
  // Person person4 = Person(height: 10, weight: 20, age: 22);
  // Person person5 = Person(height: 10, weight: 20, age: 22);
  //

  // print(person1.height.toString());

  runApp(QuizApp());
}


class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}







