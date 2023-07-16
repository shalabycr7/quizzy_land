import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/screens/quiz_screen.dart';

import '../global/global_data.dart';
import '../global/gradient_decoration.dart';
import '../shared/card_category.dart';
import 'login_screen.dart';

class Category_Screen extends StatelessWidget {
  const Category_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: blueGradient,
          /*  child: Text(
            "What Do You Want To Improve Today?",
            style: TextStyle(
              fontFamily: 'Arial',
              fontSize: 20.0,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),*/
        ),
        Positioned(
          left: 20,
          top: 75,
          child: Row(
            children: [
              const Icon(
                Icons.waving_hand_outlined,
                color: Colors.white,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Hello ${userNameTextCont.text}',
                style: GoogleFonts.quicksand(
                  fontSize: 18.0,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 10,
          right: 10,
          top: 110,
          child: Text(
            "What Do You Want To Improve Today?",
            style: GoogleFonts.quicksand(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.78,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10.0,
                  blurRadius: 10.0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                CardCategory(
                  Images: "assets/images/biology_badge.jpg",
                  TestName: "Biology ",
                  brief:
                      "cover topics such as cell structure and function, genetics, ecology, and evolution",
                  time: biologyTest.length,
                  numOfQuestions: biologyTest.length,
                  quesion: biologyTest,
                ),
                CardCategory(
                  Images: "assets/images/history_badge.jpeg",
                  TestName: "History",
                  brief:
                      "typically covers topics related to past events and civilizations, such as ancient Greece and Rome",
                  time: historyTest.length,
                  numOfQuestions: historyTest.length,
                  quesion: historyTest,
                ),
                CardCategory(
                  Images: "assets/images/maths_badge.jpg",
                  TestName: "Math",
                  brief:
                      "covers topics related to mathematics, including algebra, geometry, trigonometry, and calculus",
                  time: mathsTest.length,
                  numOfQuestions: mathsTest.length,
                  quesion: mathsTest,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
