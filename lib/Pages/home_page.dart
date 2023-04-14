import 'package:flutter/material.dart';
import 'package:muffin/Pages/QuizPage/holiday_quiz_page.dart';
import 'package:muffin/constants.dart';
import 'package:muffin/Pages/QuizPage/animal_quiz_page.dart';
import 'package:muffin/Pages/QuizPage/weather_quiz_page.dart';
import 'QuizPage/food_quiz_page.dart';
import 'QuizPage/planet_quiz_page.dart';
import 'QuizPage/sports_quiz_page.dart';

class MySelectionScreen extends StatefulWidget {
  @override
  _MySelectionScreenState createState() => _MySelectionScreenState();
}

class _MySelectionScreenState extends State<MySelectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLight,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[

              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnimalQuizPage()),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    shadowColor: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icon/Animals.jpg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Animal',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WeatherQuizPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    shadowColor: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icon/Weather.jpg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Weather',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FoodQuizPage()),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    shadowColor: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icon/Foods.jpg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Foods',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HolidayQuizPage()),
                  );
                },

                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    shadowColor: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icon/Holiday.jpg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Holiday',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SportsQuizPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    shadowColor: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icon/Sports.jpg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Sports',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PlanetQuizPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: Card(
                    shadowColor: Colors.pinkAccent,
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/icon/Planet.jpg',
                          height: 300,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Planet',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w300,
                              fontStyle: FontStyle.italic,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
