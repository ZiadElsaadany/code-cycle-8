import 'answer_model.dart';

class QuestionModel {
  final String title;
  final List<AnswerModel> answers ;
  final String correctAnswer;
  String  ? selectAnswer;
  QuestionModel(
  {
    required this.title,
    required this.answers,
    required this.correctAnswer,
  required  this.selectAnswer
}
      );
}

List<QuestionModel> questionAndAnswers = [
  QuestionModel(
    selectAnswer : null,
      title: "What is your Favourite Color?",
      answers:[AnswerModel(title:"White"), AnswerModel(title: "Black"), AnswerModel(title: "Red"), AnswerModel(title: "Yellow")]
      ,
      correctAnswer:"Black" ,

  )


  ,    QuestionModel(    selectAnswer : null,


      correctAnswer:"Football" ,

      title: "What is your Favourite Sport?",
answers:[AnswerModel(title:"Football"), AnswerModel(title: "Black"), AnswerModel(title: "Red") , AnswerModel(title: "Yellow")]
  ),
];