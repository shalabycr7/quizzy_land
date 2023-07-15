// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/screens/test.dart';

class CardCategory extends StatelessWidget {
  final String? images;
  final String? testName;
  final String? brief;
  const CardCategory({super.key, this.images, this.testName, this.brief});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const test()),
          );
        },
        child: Card(
          color: Colors.white,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25))),
          elevation: 0.0,
          child: Container(
              width: screenSize.width,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                children: [
                  Row(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      child: Image.asset(
                        images!,
                        width: 100.0,
                        height: 100.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            testName!,
                            style: GoogleFonts.quicksand(
                                fontSize: 20,
                                color: Color.fromARGB(255, 120, 30, 255),
                                fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            brief!,
                            style: GoogleFonts.quicksand(
                              fontSize: 13.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ]),
                  Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(Icons.info_outline,
                          color: Color.fromARGB(255, 120, 30, 255), size: 20.0),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Quizz",
                        style: GoogleFonts.quicksand(
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Icon(Icons.timer_outlined,
                          color: Color.fromARGB(255, 120, 30, 255), size: 20.0),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Time",
                        style: GoogleFonts.quicksand(
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),
                ],
              )),
        ),
      ),
    );
  }
}
