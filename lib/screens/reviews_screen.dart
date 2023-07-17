import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/global_data.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
import 'package:quizzy_land/screens/category_screen.dart';
import 'package:quizzy_land/screens/login_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';

class ReviewScreen extends StatelessWidget {
  final int index;
  final int score;
  const ReviewScreen({super.key, required this.index, required this.score});

  @override
  Widget build(BuildContext context) {
    double ff = (score / (index + 1));
    double f1 = double.parse((0.75).toStringAsFixed(2));
    return WillPopScope(
      onWillPop: () => _onBackPressed(context),
      child: SafeArea(
          child: Scaffold(
              bottomNavigationBar: Container(
                  decoration: blueGradient,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(50),
                        child: Text(
                          "${score} out of ${index + 1} are correct",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Expanded(
                          child: Container(
                        height: MediaQuery.of(context).size.height * 4 / 5,
                        decoration: BoxDecoration(
                            color: Color.fromRGBO(246, 241, 248, 1),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(60),
                                topRight: Radius.circular(60))),
                        width: MediaQuery.of(context).size.width,
                        child: Column(children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(30),
                            child: CircularPercentIndicator(
                              radius: 100.0,
                              lineWidth: 15.0,
                              percent: ff,
                              center: Text(
                                "${double.parse(ff.toStringAsFixed(2)) * 100}%",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              progressColor:
                                  const Color.fromARGB(255, 86, 86, 194),
                            ),
                          ),
                          const Text(
                            'Congratulations',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 86, 86, 194),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'You have got $score Points',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 86, 86, 194),
                                fontSize: 10),
                          ),
                          const SizedBox(height: 20),
                          const Text(
                            'Here is  The Result ',
                            style: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
                                fontSize: 10),
                          ),
                          const SizedBox(height: 20),
                          Wrap(
                              //mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                for (int i = 0; i < ((index + 1)); i++)
                                  if (numbers[i] == 0)
                                    Padding(
                                      padding: EdgeInsets.all(
                                          MediaQuery.of(context).size.width *
                                              .009),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            minimumSize:
                                                MaterialStatePropertyAll(Size(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        .12,
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        .12)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.red),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "${i + 1}",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )),
                                    )
                                  else
                                    Padding(
                                      padding: EdgeInsets.all(
                                          MediaQuery.of(context).size.width *
                                              .009),
                                      child: ElevatedButton(
                                          style: ButtonStyle(
                                            minimumSize:
                                                MaterialStatePropertyAll(Size(
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        .12,
                                                    MediaQuery.of(context)
                                                            .size
                                                            .width *
                                                        .12)),
                                            backgroundColor:
                                                MaterialStateProperty.all(
                                                    Colors.green),
                                          ),
                                          onPressed: () {},
                                          child: Text(
                                            "${i + 1}",
                                            style: TextStyle(
                                              fontSize: 15,
                                            ),
                                          )),
                                    ),
                              ]),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      backgroundColor: Colors.grey,
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 17),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const CategoryScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Try again',
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      elevation: 0.0,
                                      backgroundColor: const Color.fromARGB(
                                          255, 86, 86, 194),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10.0, vertical: 17),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const LoginScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Go to home',
                                      style: GoogleFonts.quicksand(
                                        textStyle: const TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                      )),
                    ],
                  )))),
    );
  }
}

Future<bool> _onBackPressed(BuildContext context) async {
  return showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: const Text('Are you sure?'),
      content: const Text('Do you want to go back to the category section?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () => Navigator.of(context).pop(true),
          child: const Text('Yes'),
        ),
      ],
    ),
  ).then((value) => value ?? false);
}
