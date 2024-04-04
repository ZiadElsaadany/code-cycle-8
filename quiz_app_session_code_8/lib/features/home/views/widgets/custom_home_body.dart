import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/features/home/views/widgets/custom_home_divide.dart';
import 'package:quiz_app_session_code_8/features/home/views/widgets/custom_result_dialog.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_texts.dart';

class CustomHomeBody extends StatefulWidget {
  const CustomHomeBody({super.key});

  @override
  State<CustomHomeBody> createState() => _CustomHomeBodyState();
}

class _CustomHomeBodyState extends State<CustomHomeBody> {
  List<Map<String, dynamic>> questions = [
    {
      "title":  "q1",
      "answers": ["a1", "a2" , "a3"],
      "correctAnswer": "a1",
      "selectedAnswer": null

    } ,
    {
      "title":  "q10",
      "answers": ["a4", "a5"],
      "correctAnswer": "a5",
      "selectedAnswer": null //"a4"
    } ,
    {
      "title":  "q3",
      "answers": ["a6", "a7" , "a8", "a9"],
      "correctAnswer": "a8",
      "selectedAnswer": null  //a7
    } ,
  ] ;


  int score = 0 ;
  checkScore( ) {
    for(int i   = 0 ;  i<questions.length ; i++ ) {

       if(questions[i]["correctAnswer"]== questions[i]["selectedAnswer"] ) {
         score += 10 ;
       }

    }
  }



  int questionIndex  = 0  ;

  // 0     1  2   3    4     5
  plusQuestionIndex() {


    if(questionIndex <questions.length-1 ) {

      if(questions[questionIndex]["selectedAnswer"]!=null){
        questionIndex++;  // 0    1     2
        setState(() {

        });
      }else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("choose one answer"),
        ));
      }

    }else{
      checkScore();
      showDialog(context: context, builder: (cont )
      {
        return CustomResultDialog(
          score: score,
          length: questions.length,
        );
      } );

    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [



        SizedBox(height: 45,),

        Text(questions[questionIndex]["title"] ,


          style: const TextStyle(


              color: AppColors.primaryColor,
              fontWeight: FontWeight.w700,
              fontSize: 14
          ),
          textAlign: TextAlign.right,
        ) ,
        SizedBox(height: 14,),


        CustomHomeDivider(),


        // GestureDetector(
        //     onTap: ( ){ } ,
        //     child: Container())


        // row1
        //"answers": ["a1", "a2" , "a3"]
        // cascade operator

        ...questions[questionIndex]["answers"].map(
                (answer){
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(answer),



                  Radio(
                    activeColor: AppColors.primaryColor,
                    value: answer,
                    groupValue:questions[questionIndex]["selectedAnswer"] ,
                    onChanged: ( x) {
                      questions[questionIndex]["selectedAnswer"]= x;
                      setState(() {

                      });
                    },
                  )

                ],
              );
            }
        ),



   CustomHomeDivider(),
        SizedBox(height: 14,),

        // Text(questions[questionIndex]["answers"][0]),
        // Text(questions[questionIndex]["answers"][1]),
        // Text(questions[questionIndex]["answers"][3]),
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
          child: Text(



            questionIndex== questions.length-1  ?  AppTexts.send:     AppTexts.next,

            style: TextStyle(
                color: AppColors.white
            ),
          ),
        ))
        //






      ],
    );
  }
}
