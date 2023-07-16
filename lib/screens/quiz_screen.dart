import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/global_data.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
import 'package:quizzy_land/screens/reviews_screen.dart';
import 'package:quizzy_land/shared/countdown_timer.dart';

class QuizScreen extends StatefulWidget {
  final String? test;
  final List questionsList;
  var time;

  QuizScreen(
      {super.key,
      required this.test,
      required this.questionsList,
      required this.time});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int index = 0;
  int score = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return WillPopScope(
      onWillPop: () => _onBackPressed(context),
      child: Scaffold(
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
                    onPressed: () async {
                      bool shouldNavigateBack =
                          await showBackAlertDialog(context);
                      if (shouldNavigateBack) {
                        Navigator.of(context).pop();
                      }
                    },
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
                        backgroundColor:
                            const Color.fromARGB(255, 120, 30, 255),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 17),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                ReviewScreen(index: index, score: score),
                          ),
                        );
                      },
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
                        CountDown(quizTime: widget.time),
                        Text(
                          'Q.${index + 1}/${widget.questionsList.length}',
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
                        widget.questionsList[index]["question"],
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
                      for (int i = 0;
                          i <
                              (widget.questionsList[index]["answers"] as List)
                                  .length;
                          i++)
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: ElevatedButton(
                            onPressed: () {
                              score = score +
                                  widget.questionsList[index]["answers"][i]
                                      ["score"] as int;

                              if (index == widget.questionsList.length - 1) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ReviewScreen(
                                            index: index,
                                            score: score,
                                          )),
                                );
                              } else {
                                setState(() {
                                  index++; // i changed the state (Data)
                                });

                                print(widget.questionsList[index]["answers"][i]
                                    ["score"]);

                                print(score);
                              }
                            },
                            style: ButtonStyle(
                                elevation: MaterialStateProperty.all(0),
                                padding: MaterialStateProperty.all(
                                    const EdgeInsets.symmetric(
                                        vertical: 25, horizontal: 15)),
                                backgroundColor: getColor(Colors.white,
                                    const Color.fromARGB(255, 120, 30, 255)),
                                foregroundColor:
                                    getColor(Colors.black, Colors.white),
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: const BorderSide(
                                      color: Colors.grey, width: 0.5),
                                ))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  widget.questionsList[index]["answers"][i]
                                      ["ans"],
                                  style: GoogleFonts.quicksand(
                                    fontSize: 14,
                                  ),
                                ),
                                const Icon(Icons.arrow_forward, size: 16.0),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  MaterialStateProperty<Color> getColor(Color color, Color colorPressed) {
    getColor(Set<MaterialState> states) {
      if (states.contains(MaterialState.pressed)) {
        return colorPressed;
      } else {
        return color;
      }
    }

    return MaterialStateProperty.resolveWith(getColor);
  }

  Future<bool> _onBackPressed(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to go back to the previous screen?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }

  Future<bool> showBackAlertDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Are you sure?'),
        content: Text('Do you want to go back to the previous screen?'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: Text('No'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            child: Text('Yes'),
          ),
        ],
      ),
    ).then((value) => value ?? false);
  }
}
