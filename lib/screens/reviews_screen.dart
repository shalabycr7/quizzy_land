import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
import 'package:quizzy_land/screens/login_screen.dart';
import 'package:quizzy_land/screens/quiz_screen.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Container(
          height: 100,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 245, 240, 252),
          ),
          child: Column(
            children: [
              const Divider(
                thickness: 1,
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
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
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const QuizScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Try again',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
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
                        backgroundColor:
                            const Color.fromARGB(255, 120, 30, 255),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 17),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        'Go to home',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
        body: Container(
            decoration: blueGradient,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 90, 20, 40),
                  child: Text(
                    '2 out of 5 are correct',
                    style: GoogleFonts.quicksand(
                      textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  height: MediaQuery.of(context).size.height * 4 / 5,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(246, 241, 248, 1),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(30),
                      child: Icon(
                        Icons.lightbulb_outline_rounded,
                        size: 150,
                        color: Color.fromARGB(255, 120, 30, 255),
                      ),
                    ),
                    Text(
                      'Congratulations',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                            color: Color.fromARGB(255, 120, 30, 255),
                            fontSize: 22,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Text(
                      'You have got 195.56 Points',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          color: Color.fromARGB(255, 120, 30, 255),
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .009),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              minimumSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width * .12,
                                  MediaQuery.of(context).size.width * .12)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                            ),
                            onPressed: () {},
                            child: Text(
                              "1",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .009),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              minimumSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width * .12,
                                  MediaQuery.of(context).size.width * .12)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.green),
                            ),
                            onPressed: () {},
                            child: Text(
                              "2",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .009),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              minimumSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width * .12,
                                  MediaQuery.of(context).size.width * .12)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                            ),
                            onPressed: () {},
                            child: Text(
                              "3",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .009),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              minimumSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width * .12,
                                  MediaQuery.of(context).size.width * .12)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                            ),
                            onPressed: () {},
                            child: Text(
                              "4",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            )),
                      ),
                      Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width * .009),
                        child: ElevatedButton(
                            style: ButtonStyle(
                              elevation: MaterialStateProperty.all(0),
                              minimumSize: MaterialStatePropertyAll(Size(
                                  MediaQuery.of(context).size.width * .12,
                                  MediaQuery.of(context).size.width * .12)),
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.red),
                            ),
                            onPressed: () {},
                            child: Text(
                              "5",
                              style: GoogleFonts.quicksand(
                                textStyle: const TextStyle(
                                  fontSize: 15,
                                ),
                              ),
                            )),
                      ),
                    ]),
                  ]),
                )),
              ],
            )));
  }
}
