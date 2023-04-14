import '../../Service/question_service.dart';


List<Question> getQuestionPlanet(){

  List<Question> list = [];

  list.add(Question(
      'Ankara is .......... than Mersin.',
      [
        Answer("the most crowded", false),
        Answer("most crowded", false),
        Answer("more crowded", true),
        Answer("the more crowded", false),
      ]
  ));

  list.add(Question(
      'The youngest member of our family is my ........',
      [
        Answer("father", false),
        Answer("mother", false),
        Answer("sister", true),
        Answer("grandfather", false),
      ]
  ));

  list.add(Question(
      'The moon ...... than Earth.',
      [
        Answer("bigger than", true),
        Answer("the biggest", false),
        Answer("the bigger than", false),
        Answer("more big than", false),
      ]
  ));

  list.add(Question(
      'Mars is ....... Uranus from the Sun.',
      [
        Answer("the closest", false),
        Answer("closer than", true),
        Answer("the closer than", false),
        Answer("closest", false),
      ]
  ));

  list.add(Question(
      'Neil Armstrong was a NASA astronaut and the first man on the ..... .',
      [
        Answer("sun", false),
        Answer("moon", true),
        Answer("mars", false),
        Answer("venus", false),
      ]
  ));

  list.add(Question(
      'The largest planet in the Solar System is ....... .',
      [
        Answer("Mars", false),
        Answer("Mercury", false),
        Answer("Venus", true),
        Answer("Earth", false),
      ]
  ));

  list.add(Question(
      'Saturn is ...... Venus.',
      [
        Answer("the biggest", false),
        Answer("bigger than", true),
        Answer("smallest one", false),
        Answer("bigger", false),
      ]
  ));

  list.add(Question(
      'Galileo ........... the telescope.  ',
      [
        Answer("invented", true),
        Answer("discovered", false),
        Answer("found", false),
        Answer("observed", false),
      ]
  ));

  list.add(Question(
      'The youngest member of our family is my ........',
      [
        Answer("father", false),
        Answer("mother", false),
        Answer("sister", true),
        Answer("grandfather", false),
      ]
  ));

  list.add(Question(
      'Pathfinder ......... on Mars in 1997.',
      [
        Answer("landed", true),
        Answer("invented", false),
        Answer("discovered", false),
        Answer("closed", false),
      ]
  ));



  return list;
}