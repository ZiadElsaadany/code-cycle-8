import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/features/home/views/widgets/total_score_dialog.dart';
import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_texts.dart';
import '../../data/models/question_model.dart';
import 'answer_item.dart';
import 'custom_button.dart';
import 'custom_home_divider.dart';

class HomePageBody extends StatefulWidget {
  const HomePageBody({super.key});

  @override
  State<HomePageBody> createState() => _HomePageBodyState();
}

class _HomePageBodyState extends State<HomePageBody> {

  int index  =  0 ;
  int totalScore= 0;



  makeAllSelectedEqualNull( ) {
    for(int i     = 0 ;i<questionAndAnswers.length ; i++) {
      questionAndAnswers[i ].selectAnswer = null;
    }
  }
plusTotal(  ){
  if(questionAndAnswers[index].correctAnswer == questionAndAnswers[index].selectAnswer) {
    totalScore +=10;


    debugPrint("total score:  $totalScore");

  }
}
showTotalDialog() {
if( index == questionAndAnswers.length-1 )  {
  showDialog(
      context: context,
      builder: (_) => TotalScoreDialog()
  ).then((v) {
     setState(() {
       index  =  0 ;
       totalScore= 0;
       makeAllSelectedEqualNull();
     });
  });
}
}

  incrementIndex(){
      setState(() {
        plusTotal();
        showTotalDialog();
        if (index < questionAndAnswers.length - 1) {

          index++;

          debugPrint("index  = $index");
        }
      });


    }


  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33.0),
      child: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(height: 20),
          Text(questionAndAnswers[index].title,
              style: GoogleFonts.almarai(
                fontWeight: FontWeight.w700,
                fontSize: 14,
                color: AppColors.primaryColor,
              ),
              textAlign: TextAlign.center

          ),
          const SizedBox(height: 14),
          const CustomHomeDivider(),

          const SizedBox(height: 17),
        /**
         * The ... operator is used to unpack the elements of the list questionAndAnswers[0]["answers"]. This list contains the answers to a specific question. Each answer is then mapped to a Text widget, which displays the answer text. The result is a list of Text widgets, each representing an answer to the question.
         * */
          ...questionAndAnswers[index].answers.map((answer) => AnswerItem(
            index:index,
            answer:answer
          )) ,

          const CustomHomeDivider() ,
          const SizedBox(height: 25),
        CustomButton(
          title: index== questionAndAnswers.length-1 ? AppTexts.send:AppTexts.next,
          onPressed:() {
            incrementIndex();

          }

        ),
            const SizedBox(height: 46),
           Text("(${index+1}/${questionAndAnswers.length})" ,
          style: GoogleFonts.almarai(
            fontWeight: FontWeight.w700,
            fontSize: 14,
            color: AppColors.primaryColor,
          ),
             textAlign: TextAlign.center
          )



        ]),
      ),
    );
  }
}
