import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../data/models/answer_model.dart';
import '../../data/models/question_model.dart';

class AnswerItem extends StatefulWidget {
  const AnswerItem({super.key, required this.index, required this.answer});
  final int index;

  final AnswerModel answer;
  @override
  State<AnswerItem> createState() => _AnswerItemState();
}

class _AnswerItemState extends State<AnswerItem> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(
              activeColor :AppColors.primaryColor,
              value: widget.answer.title,
              groupValue: questionAndAnswers[widget.index].selectAnswer ,
              onChanged: ( value) {

                setState(() {
                  questionAndAnswers[widget.index].selectAnswer = value;

                  // debugPrint(questionAndAnswers[index].selectAnswer .toString());
                });
              },
            ),
            Expanded(
              child: Text(widget.answer.title,

                  style:const TextStyle(
                      color:AppColors.textBlackColor
                      ,
                      fontSize: 14
                  )
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),


      ],
    );
  }
}
