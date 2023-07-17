import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/global_data.dart';
import 'package:quizzy_land/screens/quiz_screen.dart';

class CardCategory extends StatelessWidget {
  final String? images;
  final String testName;
  final String? brief;
  final int? numOfQuestions;
  final int time;

  final Map<String, List<dynamic>> qlist = {
    'Biology': biologyTest,
    'History': historyTest,
    'Maths': mathsTest
  };

  CardCategory(
      {Key? key,
      this.images,
      required this.testName,
      this.brief,
      this.numOfQuestions,
      required this.time})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuizScreen(
                        test: testName,
                        questionsList: qlist[testName] as List,
                        time: time,
                      )),
            );
          },
          child: Card(
            color: const Color.fromRGBO(246, 241, 248, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(28.0),
                bottomRight: Radius.circular(28.0),
              ),
            ),
            elevation: 8.0,
            child: Container(
                width: screenSize.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Row(children: [
                      Positioned(
                          left: 0,
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0)),
                            child: Image.asset(
                              this.images!,
                              width: 100.0,
                              height: 100.0,
                              fit: BoxFit.cover,
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Wrap(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  testName!,
                                  style: GoogleFonts.racingSansOne(
                                    fontSize: 20,
                                    color:
                                        const Color.fromARGB(255, 86, 86, 194),
                                  ),
                                ),
                                SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  brief!,
                                  style: GoogleFonts.quicksand(
                                    fontSize: 11.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ]),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: screenSize.width * 0.9,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(Icons.info_outline,
                              color: const Color.fromARGB(255, 86, 86, 194),
                              size: 13.0),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${numOfQuestions}qestions",
                            style: GoogleFonts.quicksand(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.timer_outlined,
                              color: const Color.fromARGB(255, 86, 86, 194),
                              size: 13.0),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "${time}Time",
                            style: GoogleFonts.quicksand(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    /*Expanded(
                      child: Transform.translate(
                        offset: Offset(140, 0),
                        child: Container(
                          width: 60,
                          height: 100,
                          child: Icon(
                            Icons.cabin_rounded,
                            size: 23,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 67, 72, 169),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12.0),
                            ),
                          ),
                        ),
                      ),
                    ),*/
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
