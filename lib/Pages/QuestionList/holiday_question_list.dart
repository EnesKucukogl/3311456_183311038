import '../../Service/question_service.dart';


List<Question> getQuestionHoliday(){

  List<Question> list = [];

  list.add(Question(
      '... you ... to the cinema yesterday? Yes, it ... a funny film.',
      [
        Answer("did - go - is", false),
        Answer("did - go - was", true),
        Answer("were - go - is", false),
        Answer("did - went - was", false),
      ]
  ));

  list.add(Question(
      '.... you ..... pictures on your leisure time?',
      [
        Answer("do - drew", false),
        Answer("did - draw", true),
        Answer("did - drew", false),
        Answer("do - draw", false),
      ]
  ));

  list.add(Question(
      'Melek ........ an university student last year.',
      [
        Answer("did", false),
        Answer("had", false),
        Answer("was", true),
        Answer("were", false),
      ]
  ));

  list.add(Question(
      'I ___ at home yesterday. I ____ go out for dinner.',
      [
        Answer("was / Didn’t", true),
        Answer("weren’t / did", false),
        Answer("were / didn’t", false),
        Answer("was / did", false),
      ]
  ));

  list.add(Question(
      'We ____ in a tent on the last day of festivals.',
      [
        Answer("visited", false),
        Answer("climbed", false),
        Answer("stopped", false),
        Answer("stayed", true),
      ]
  ));

  list.add(Question(
      'She sunbathed with her boyfriend ________',
      [
        Answer("tomorrow", false),
        Answer("today", false),
        Answer("yesterday", true),
        Answer("tonight", false),
      ]
  ));

  list.add(Question(
      'They ____ lunch in a restaurant at palf past two yesterday.-',
      [
        Answer("did", false),
        Answer("eat", false),
        Answer("had", true),
        Answer("have", false),
      ]
  ));

  list.add(Question(
      '.... you ..... pictures on your leisure time?',
      [
        Answer("do - drew", false),
        Answer("did - drew", false),
        Answer("did - draw", true),
        Answer("do - draw", false),
      ]
  ));

  list.add(Question(
      'Where did you see your teacher?',
      [
        Answer("yesterday", false),
        Answer("on the bus", true),
        Answer("at 7 o'clock", false),
        Answer("monday", false),
      ]
  ));

  list.add(Question(
      'Melek ........ an university student last year.',
      [
        Answer("did", false),
        Answer("had", false),
        Answer("was", true),
        Answer("were", false),
      ]
  ));



  return list;
}