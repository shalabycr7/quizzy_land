import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/global_data.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
import 'package:quizzy_land/screens/login_screen.dart';
import 'package:quizzy_land/shared/card_category.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: blueGradient,
        ),
        Positioned(
          left: 20,
          top: 75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "What Do You Want To Improve Today?",
                    style: GoogleFonts.quicksand(
                        fontSize: 18.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  const Icon(
                    Icons.arrow_circle_right_outlined,
                    color: Colors.white,
                    size: 22,
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
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
                  images: "assets/images/biology_badge.jpg",
                  testName: "Biology",
                  brief:
                      "cover topics such as cell structure and function, genetics, ecology, and evolution",
                  numOfQuestions: biologyTest.length,
                  time: biologyTest.length,
                ),
                CardCategory(
                  images: "assets/images/history_badge.jpeg",
                  testName: "History",
                  brief:
                      "typically covers topics related to past events and civilizations, such as ancient Greece and Rome",
                  numOfQuestions: historyTest.length,
                  time: historyTest.length,
                ),
                CardCategory(
                  images: "assets/images/maths_badge.jpg",
                  testName: "Maths",
                  brief:
                      "covers topics related to mathematics, including algebra, geometry, trigonometry, and calculus",
                  numOfQuestions: mathsTest.length,
                  time: mathsTest.length,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
