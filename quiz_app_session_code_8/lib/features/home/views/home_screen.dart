
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/core/utils/app_texts.dart';

import '../../../core/utils/app_colors.dart';
import '../../../core/widgets/app_bar_widget.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   List<String> questions = [
     "q1" ,
     "q2" ,
     "q3"
   ] ;

   int questionIndex  = 0  ;


   plusQuestionIndex() {

     if(questionIndex <questions.length-1 ) {
       questionIndex++;
       setState(() {

       });
     }
   }
  @override
  Widget build(BuildContext context) {
    return  Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            toolbarHeight:100 ,
          flexibleSpace:CustomAppBar() ,
        ),
        body: Column(
          children: [


            Text(questions[questionIndex] ,

            style: TextStyle(


              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 14
            ),
              textAlign: TextAlign.right,
            ) ,

            // GestureDetector(
            //     onTap: ( ){ } ,
            //     child: Container())


            TextButton(

                style: ButtonStyle(
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8
                    ) ,

                  )),
                  backgroundColor: MaterialStateProperty.all(AppColors.primaryColor)
                ),
                onPressed: ( ) {

                  plusQuestionIndex();


                } , child: Padding(


                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0),
                  child: Text(AppTexts.next,

                              style: TextStyle(
                                color: AppColors.white
                              ),
                              ),
                ))
          //






          ],
        ),
      ),
    );
  }
}
