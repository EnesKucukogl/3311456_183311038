import 'package:flutter/material.dart';

// class Image{
//   final Object questionImage;
//   final List<Question> questionList;
//
//   Image(this.questionImage,this.questionList);
// }

class Question{

  final String questionText;
  final List<Answer> answerList;

  Question(this.questionText, this.answerList);
}

class Answer{

  final String answerText;
  final bool isCorrect;

  Answer(this.answerText, this.isCorrect);

}

