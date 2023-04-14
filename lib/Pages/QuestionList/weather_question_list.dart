import '../../Service/question_service.dart';


List<Question> getQuestionWeather(){

  List<Question> list = [];

  list.add(Question(
      'August is _____ than january.',
      [
        Answer("warmer than", true),
        Answer("colder than", false),
        Answer("more hot than", false),
        Answer("more cold than", false),
      ]
  ));

  list.add(Question(
      'Duran : Is it stormy and cold in _____ ? Belkıs : Yes.',
      [
        Answer("summer", false),
        Answer("winter", true),
        Answer("spring", false),
        Answer("autumn", false),
      ]
  ));

  list.add(Question(
      'I want to go outside and play football. It\'s _____ .',
      [
        Answer("stormy", false),
        Answer("snowy", false),
        Answer("hot", true),
        Answer("cold", false),
      ]
  ));

  list.add(Question(
      'It\'s raining. You should take your _____ .',
      [
        Answer("t-shirt", false),
        Answer("umbrella", true),
        Answer("bag", false),
        Answer("guitar", false),
      ]
  ));

  list.add(Question(
      'The snow melts on _____ .',
      [
        Answer("spring", true),
        Answer("winter", false),
        Answer("summer", false),
        Answer("autumn", false),
      ]
  ));

  list.add(Question(
      'There are 12 _____ in a year.',
      [
        Answer("weeks", false),
        Answer("days", false),
        Answer("months", true),
        Answer("seasons", false),
      ]
  ));

  list.add(Question(
      'Don’t forget to take your umbrella. It is ______ today.',
      [
        Answer("sunny", false),
        Answer("cloudy", false),
        Answer("foggy", false),
        Answer("rainy", true),
      ]
  ));

  list.add(Question(
      'What is the weather like in summer ?',
      [
        Answer("stormy", false),
        Answer("snowy", false),
        Answer("sunny", true),
        Answer("windy", false),
      ]
  ));

  list.add(Question(
      'I am very _____ . It’s freezing outside.',
      [
        Answer("cold", true),
        Answer("scared", false),
        Answer("sleepy", false),
        Answer("upset", false),
      ]
  ));

  list.add(Question(
      'How many hours are there in a day ?',
      [
        Answer("12", false),
        Answer("7", false),
        Answer("24", true),
        Answer("4", false),
      ]
  ));

  return list;
}