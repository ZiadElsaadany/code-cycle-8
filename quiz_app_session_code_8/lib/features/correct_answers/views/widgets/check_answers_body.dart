import 'package:flutter/material.dart';
import 'package:quiz_app_session_code_8/features/correct_answers/views/widgets/check_answer_item_widget.dart';
import 'package:quiz_app_session_code_8/features/home/views/widgets/custom_home_divide.dart';

import '../../../home/data/models/question_model.dart';

class CheckAnswersBody extends StatelessWidget {
  const CheckAnswersBody({super.key, required this.questions});
final List<QuestionModel>  questions;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: ListView(
        children: [
 ...questions.map((questionModel) =>
     CustomCheckAnswerItemWidget(
       questionModel: questionModel,
     ),
 ),


        ],
      ),
    );
  }
}
