import 'package:flutter/material.dart';
import 'package:muffin/Service/question_service.dart';
import 'package:muffin/constants.dart';
import 'package:muffin/Pages/home_page.dart';
import '../QuestionList/planet_question_list.dart';

class PlanetQuizPage extends StatefulWidget {
  const PlanetQuizPage({Key? key}) : super(key: key);

  @override
  State<PlanetQuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<PlanetQuizPage> {
  List<Question> questionList = getQuestionPlanet();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLight,
      body: Container(
        // decoration: const BoxDecoration(
        //   gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     colors: [
        //       background,
        //       backgroundLight,
        //     ]
        //   ),
        // ),
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: const Text(
                "Fill in the blanks",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            _questionWidget(),
            _answerList(),
            _nextButton(),
          ],
        ),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Colors.orangeAccent,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answerList
          .map(
            (e) => _answerButton(e),
      )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: isSelected ? Colors.orangeAccent : Colors.white,
          foregroundColor: isSelected ? Colors.white : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
          }
          setState(() {
            selectedAnswer = answer;
          });
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;

    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }
    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(
          isLastQuestion ? "Submit" : "Next-->",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.white,
        ),
        onPressed: () {
          if (isLastQuestion) {
            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;

    if (score >= questionList.length * 0.6) {
      isPassed = true;
    }

    String title = isPassed ? "Quiz successful" : "Try again";

    return AlertDialog(
      backgroundColor: Colors.white,
      title: Text(
        title + " | Score is $score",
        style: TextStyle(color: isPassed ? correct : incorrect),
      ),
      content: Container(
        width: 200,
        height: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orangeAccent,
              ),
              child: const Text("Restart"),
              onPressed: () {
                Navigator.pop(context);
                setState(() {
                  currentQuestionIndex = 0;
                  score = 0;
                  selectedAnswer = null;
                });
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orangeAccent
              ),
              child: const Text("Back to home page"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MySelectionScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
