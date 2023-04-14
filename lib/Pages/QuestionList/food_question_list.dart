import '../../Service/question_service.dart';


List<Question> getQuestionFood(){

  List<Question> list = [];

  list.add(Question(
      'A: Do you like coffee on breakfast? B: No, I don\'t like coffee, I ......... orange juice.',
      [
        Answer("don't like", false),
        Answer("do", false),
        Answer("like", true),
        Answer("hate", false),
      ]
  ));

  list.add(Question(
      'A: Is there any eggs? B: No, there\'s isn\'t .... eggs.',
      [
        Answer("many", false),
        Answer("more", false),
        Answer("any", true),
        Answer("much", false),
      ]
  ));

  list.add(Question(
      'A: What do you like to eat on breakfast? B: I like to eat .........',
      [
        Answer("honey", true),
        Answer("meat", false),
        Answer("fish", false),
        Answer("chicken", false),
      ]
  ));

  list.add(Question(
      'A: Would you like to eat something on breakfast? B: Yes, I\'m very ......',
      [
        Answer("angry", false),
        Answer("excited", false),
        Answer("hungry", true),
        Answer("not hungry", false),
      ]
  ));

  list.add(Question(
      'A: Would you like anything else? B: No, I\'m .....',
      [
        Answer("full", true),
        Answer("hungry", false),
        Answer("angry", false),
        Answer("excited", false),
      ]
  ));

  list.add(Question(
      'A: I like bagels. Do you like? B: Yes, i like bagels, ... .',
      [
        Answer("too", true),
        Answer("never", false),
        Answer("anyway", false),
        Answer("always", false),
      ]
  ));

  list.add(Question(
      'A: Which fruit do you like to eat at breakfast? B: I like to eat ... .',
      [
        Answer("egg", false),
        Answer("milk", false),
        Answer("banana", true),
        Answer("fish", false),
      ]
  ));

  list.add(Question(
      'A: Is there any honey? B: Yes, there is ... honey.',
      [
        Answer("any", false),
        Answer("much", false),
        Answer("more", false),
        Answer("lots of", true),
      ]
  ));

  list.add(Question(
      'John feeds the cat with _____',
      [
        Answer("tea", false),
        Answer("milk", true),
        Answer("honey", false),
        Answer("jam", false),
      ]
  ));

  list.add(Question(
      '____ does your sister like eating ?',
      [
        Answer("what", true),
        Answer("where", false),
        Answer("how", false),
        Answer("why", false),
      ]
  ));



  return list;
}