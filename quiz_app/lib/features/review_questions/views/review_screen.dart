import 'package:flutter/material.dart';
import 'package:quiz_app/features/home/data/models/question_model.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(

        itemCount: questionAndAnswers.length,
          itemBuilder: (context,index) {
        return     Column(
          children: [
            Text(questionAndAnswers[index].title),
            Divider(),
              Wrap(
                children: [
                  for(int i = 0 ;i<questionAndAnswers[index].answers.length ; i++ )
                    SizedBox(
                      child: Center(

                        child:Text(questionAndAnswers[index].answers[i].title ,
                        style: TextStyle(
                          color: questionAndAnswers[index].answers[i].title == questionAndAnswers[index].correctAnswer?
                              Colors.green:
                          questionAndAnswers[index].answers[i].title == questionAndAnswers[index].selectAnswer
                              && questionAndAnswers[index].selectAnswer != questionAndAnswers[index].correctAnswer?
                          Colors.red:Colors.black

                        ),
                        ),
                      ),
                    ),
                ],
              ),
            Divider(),


          ],
        )     ;
      }),
    );
  }
}
