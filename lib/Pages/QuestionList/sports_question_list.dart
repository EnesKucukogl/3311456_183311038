import '../../Service/question_service.dart';


List<Question> getQuestionSports(){

  List<Question> list = [];

  list.add(Question(
      '......... is an outdoor sport.',
      [
        Answer("basketball", false),
        Answer("golf", true),
        Answer("volleyball", false),
        Answer("table tennis", false),
      ]
  ));

  list.add(Question(
      '......... is a team sport.',
      [
        Answer("basketball", true),
        Answer("tennis", false),
        Answer("golf", false),
        Answer("swimming", false),
      ]
  ));

  list.add(Question(
      'We ...... eat fast food to be healty.',
      [
        Answer("never", true),
        Answer("always", false),
        Answer("usually", false),
        Answer("sometimes", false),
      ]
  ));

  list.add(Question(
      'I ...... get up early to go to school.',
      [
        Answer("usually", false),
        Answer("never", false),
        Answer("sometimes", false),
        Answer("always", true),
      ]
  ));

  list.add(Question(
      'I go to swimming 5 days ...... .',
      [
        Answer("a week", false),
        Answer("in a week", true),
        Answer("at the week", false),
        Answer("yesterday", false),
      ]
  ));

  list.add(Question(
      'Successfull tennis players are ..... ready for the match. Because they practice .......',
      [
        Answer("always / everyday", true),
        Answer("never / everyday", false),
        Answer("sometimes / everyday", false),
        Answer("always / tomorrow", false),
      ]
  ));

  list.add(Question(
      'A tortoise is ....... a rabbit.',
      [
        Answer("slower", false),
        Answer("more slow", false),
        Answer("slower than", false),
        Answer("faster", true),
      ]
  ));

  list.add(Question(
      'Beşiktaş was ........ with Fenerbahçe in the last football match yesterday.',
      [
        Answer("hit", false),
        Answer("won", true),
        Answer("beat", false),
        Answer("escape", false),
      ]
  ));

  list.add(Question(
      'She don\'t like team sports. She likes ....... .',
      [
        Answer("basketball", false),
        Answer("biking", true),
        Answer("football", false),
        Answer("volleyball", false),
      ]
  ));

  list.add(Question(
      'I get up early and have breakfast. After, I play ...... with Michael Jordan.',
      [
        Answer("golf", false),
        Answer("football", false),
        Answer("volleyball", false),
        Answer("basketball", true),
      ]
  ));

  return list;
}