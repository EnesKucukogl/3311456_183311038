import '../../Service/question_service.dart';


List<Question> getQuestionAnimal(){

  List<Question> list = [];

  list.add(Question(
      'Fishes lives in see but ______ live in forestes.',
      [
        Answer("lions", true),
        Answer("dogs", false),
        Answer("cats", false),
        Answer("sharks", false),
      ]
  ));

  list.add(Question(
      'Fishes can swim. Because they have _____ .',
      [
        Answer("wings", false),
        Answer("gill", true),
        Answer("hand", false),
        Answer("tails", false),
      ]
  ));

  list.add(Question(
      'Cheetah is ______ animal in the world.',
      [
        Answer("faster", false),
        Answer("more fast", false),
        Answer("the fastest", true),
        Answer("the fast", false),
      ]
  ));

  list.add(Question(
      '______ live in deserts.',
      [
        Answer("Lions", false),
        Answer("Tigers", false),
        Answer("Fishes", false),
        Answer("Camels", true),
      ]
  ));

  list.add(Question(
      'Crocodile\'s colour is _____ .',
      [
        Answer("blue", false),
        Answer("black", false),
        Answer("green", true),
        Answer("white", false),
      ]
  ));

  list.add(Question(
      'The blue whales are endangered animals because of .........',
      [
        Answer("overhunting", true),
        Answer("overbuying", false),
        Answer("overselling", false),
        Answer("overgoing", false),
      ]
  ));

  list.add(Question(
      '_______\'s natural habitat is the arctic.',
      [
        Answer("snake", false),
        Answer("lion", false),
        Answer("fish", false),
        Answer("polar bear", true),
      ]
  ));

  list.add(Question(
      '______ always live near rivers.',
      [
        Answer("Crocodiles", true),
        Answer("Bears", false),
        Answer("Monkeys", false),
        Answer("Lizards", false),
      ]
  ));

  list.add(Question(
      'Which animals live in the ocean ?',
      [
        Answer("sharks", true),
        Answer("elephants", false),
        Answer("monkeys", false),
        Answer("giraffes", false),
      ]
  ));

  list.add(Question(
      '_________ became extinct centuries ago. They are not alive anymore.',
      [
        Answer("kangaroos", false),
        Answer("monkeys", false),
        Answer("pandas", false),
        Answer("dinosaurs", true),
      ]
  ));



  return list;
}