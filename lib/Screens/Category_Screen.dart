import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Shared/Card_Category.dart';
import '../gradient_decoration.dart';

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
          left: 10,
          right: 10,
          top: 70,
          child: Text(
            "What Do You Want To Improve Today?",
            style: GoogleFonts.racingSansOne(
              fontSize: 20.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
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
                  Images:
                      "lib/assest/images/Love Heart Cloud Vector Hd PNG Images, Flask Love Heart Wedding Blue Icon On Abstract Cloud Backgrou, Heart Icons, Cloud Icons, Love Icons PNG Image For Free Download.jpg",
                  TestName: "Biology ",
                  brief:
                      "cover topics such as cell structure and function, genetics, ecology, and evolution",
                ),
                CardCategory(
                  Images:
                      "lib/assest/images/WhatsApp Image 2023-07-14 at 6.01.46 PM (1).jpeg",
                  TestName: "History",
                  brief:
                      "typically covers topics related to past events and civilizations, such as ancient Greece and Rome",
                ),
                CardCategory(
                  Images:
                      "lib/assest/images/Premium Vector _ Open book and icons of mathematics.jpg",
                  TestName: "Math",
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
