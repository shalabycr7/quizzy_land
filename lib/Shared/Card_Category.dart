// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../Screens/test.dart';

class CardCategory extends StatelessWidget {
  final String? Images;
  final String? TestName;
  final String? brief;
  const CardCategory({super.key, this.Images, this.TestName, this.brief});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => test()),
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
                          /* child: SizedBox(
                          width: 100,
                          height: 100, 
                          
                          child: Image?.asset(
                            this.Images!,
                          ),
                        ),*/
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(12.0),
                                topRight: Radius.circular(12.0)),
                            child: Image.asset(
                              this.Images!,
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
                                  TestName!,
                                  style: GoogleFonts.racingSansOne(
                                    fontSize: 20,
                                    color: Color.fromARGB(255, 67, 72, 169),
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
                          Icon(Icons.query_stats,
                              color: Color.fromARGB(255, 67, 72, 169),
                              size: 13.0),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Quizz",
                            style: GoogleFonts.quicksand(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.av_timer,
                              color: Color.fromARGB(255, 67, 72, 169),
                              size: 13.0),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Time",
                            style: GoogleFonts.quicksand(
                                fontSize: 13, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
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
                    ),
                  ],
                )),
          ),
        ),
      ),
    );
  }
}
