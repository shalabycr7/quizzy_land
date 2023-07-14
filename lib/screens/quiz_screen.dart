import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/choice_button.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
import 'package:quizzy_land/shared/countdown_timer.dart';

class QuizScreen extends StatefulWidget {
  const QuizScreen({super.key});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0.0,
                    backgroundColor: const Color.fromARGB(255, 120, 30, 255),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 19),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(
                        Icons.arrow_back_ios_new_sharp,
                        size: 15,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: const Color.fromARGB(255, 120, 30, 255),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 17),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Complete',
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
      body: DecoratedBox(
        decoration: blueGradient,
        child: SafeArea(
          child: Stack(
            alignment: AlignmentDirectional.bottomCenter,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    bottom: size.height * 0.5 / 10,
                    left: 20,
                    right: 20,
                    top: size.height * 0.25 / 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const CountDown(),
                      Text(
                        'Q.05',
                        style: GoogleFonts.quicksand(
                          textStyle: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.apps,
                        size: 25,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 20,
                ),
                height: size.height * 7.5 / 10,
                width: size.width,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 245, 240, 252),
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'When an object is in motion, it is .... must change?',
                      style: GoogleFonts.quicksand(
                        textStyle: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ChoiceButton(title: 'A. Shapen'),
                    const ChoiceButton(title: 'B. Size'),
                    const ChoiceButton(title: 'C. Accelration'),
                    const ChoiceButton(title: 'D. Position'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
