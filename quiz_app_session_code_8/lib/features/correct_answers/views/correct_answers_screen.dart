import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/core/utils/app_texts.dart';
import 'package:quiz_app_session_code_8/features/correct_answers/views/widgets/check_answers_body.dart';

import '../../../core/widgets/app_bar_widget.dart';
import '../../home/data/models/question_model.dart';

class CorrectAnswerScreen extends StatelessWidget {
  const CorrectAnswerScreen({super.key, required this.questions});

  final List<QuestionModel> questions;
  @override
  Widget build(BuildContext context) {
    print(questions[0].title.toString());
    return Scaffold(
      appBar:AppBar(
        toolbarHeight:100 ,
        flexibleSpace:CustomAppBar(
           name: AppTexts.checkAnswers,

        ) ,
      ) ,
      body: CheckAnswersBody(
        questions: questions,
      ),
    );
  }
}
