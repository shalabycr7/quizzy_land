import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
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
          right: 20,
          top: 90,
          child: Row(
            children: [
              Text(
                "Please Select A Category",
                style: GoogleFonts.quicksand(
                    fontSize: 18.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
              const SizedBox(
                width: 10,
              ),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.white,
                size: 22,
              )
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 245, 240, 252),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Column(
              children: const [
                CardCategory(
                  images: "assets/images/biology_badge.jpg",
                  testName: "Biology ",
                  brief:
                      "cover topics such as cell structure and function, genetics, ecology, and evolution",
                  numOfQuestions: 5,
                  time: 4,
                ),
                CardCategory(
                  images: "assets/images/history_badge.jpeg",
                  testName: "History",
                  brief:
                      "typically covers topics related to past events and civilizations, such as ancient Greece and Rome",
                  numOfQuestions: 4,
                  time: 2,
                ),
                CardCategory(
                  images: "assets/images/maths_badge.jpg",
                  testName: "Math",
                  brief:
                      "covers topics related to mathematics, including algebra, geometry, trigonometry, and calculus",
                  numOfQuestions: 3,
                  time: 1,
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
