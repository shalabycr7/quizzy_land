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
          left: 10,
          right: 10,
          top: 70,
          child: Text(
            "What Do You Want To Improve Today?",
            style: GoogleFonts.quicksand(
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
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
                  images:
                      "assets/images/Love Heart Cloud Vector Hd PNG Images, Flask Love Heart Wedding Blue Icon On Abstract Cloud Backgrou, Heart Icons, Cloud Icons, Love Icons PNG Image For Free Download.jpg",
                  testName: "Biology ",
                  brief:
                      "cover topics such as cell structure and function, genetics, ecology, and evolution",
                ),
                CardCategory(
                  images:
                      "assets/images/WhatsApp Image 2023-07-14 at 6.01.46 PM (1).jpeg",
                  testName: "History",
                  brief:
                      "typically covers topics related to past events and civilizations, such as ancient Greece and Rome",
                ),
                CardCategory(
                  images:
                      "assets/images/Premium Vector _ Open book and icons of mathematics.jpg",
                  testName: "Math",
                  brief:
                      "covers topics related to mathematics, including algebra, geometry, trigonometry, and calculus",
                ),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
