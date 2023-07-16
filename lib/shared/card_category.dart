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
    return SizedBox(
      height: screenSize.height * 0.25,
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
          color: Colors.white,
          margin: const EdgeInsets.symmetric(vertical: 20),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          elevation: 0.0,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        images!,
                        fit: BoxFit.fitWidth,
                        width: screenSize.width * 0.2,
                        height: screenSize.width * 0.2,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            testName,
                            style: GoogleFonts.quicksand(
                              fontSize: 21,
                              color: const Color.fromARGB(255, 120, 30, 255),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            brief!,
                            style: GoogleFonts.quicksand(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Icon(Icons.info_outline,
                        color: Color.fromARGB(255, 120, 30, 255), size: 20.0),
                    const SizedBox(width: 10),
                    Text(
                      "${numOfQuestions!} quizzes",
                      style: GoogleFonts.quicksand(fontSize: 15),
                    ),
                    const SizedBox(width: 10),
                    const Icon(Icons.timer_outlined,
                        color: Color.fromARGB(255, 120, 30, 255), size: 20.0),
                    const SizedBox(width: 10),
                    Text(
                      "$time mins",
                      style: GoogleFonts.quicksand(fontSize: 15),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
