import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
        child: Scaffold(
            body: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 78, 84, 200),
                      Color.fromARGB(255, 67, 72, 169),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(50),
                      child: Text(
                        '2 out of 5 are correct',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      height: MediaQuery.of(context).size.height * 4 / 5,
                      decoration: const BoxDecoration(
                          color: Color.fromRGBO(246, 241, 248, 1),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(60),
                              topRight: Radius.circular(60))),
                      width: MediaQuery.of(context).size.width,
                      child: Column(children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(30),
                          child: Icon(
                            Icons.lightbulb_outline_rounded,
                            size: 150,
                            color: Color.fromARGB(255, 112, 112, 212),
                          ),
                        ),
                        Text(
                          'Congratulations',
                          style: TextStyle(
                              color: Color.fromARGB(255, 112, 112, 212),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'You have got 195.56 Points',
                          style: TextStyle(
                              color: Color.fromARGB(255, 112, 112, 212),
                              fontSize: 10),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          'Tap below question numbers to view correct answers',
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 10),
                        ),
                        const SizedBox(height: 20),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * .009),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12,
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.green),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "1",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * .009),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12,
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12)),
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Colors.green),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "2",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * .009),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12,
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12)),
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "3",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * .009),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12,
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12)),
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "4",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ),
                              Padding(
                                padding: EdgeInsets.all(
                                    MediaQuery.of(context).size.width * .009),
                                child: ElevatedButton(
                                    style: ButtonStyle(
                                      minimumSize: MaterialStatePropertyAll(
                                          Size(
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12,
                                              MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  .12)),
                                      backgroundColor:
                                          MaterialStateProperty.all(Colors.red),
                                    ),
                                    onPressed: () {},
                                    child: const Text(
                                      "5",
                                      style: TextStyle(
                                        fontSize: 15,
                                      ),
                                    )),
                              ),
                            ]),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.all(
                                MediaQuery.of(context).size.width * .04),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width *
                                            .009),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          minimumSize: MaterialStatePropertyAll(
                                              Size(
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .4,
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .12)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Color.fromARGB(
                                                      255, 78, 83, 82)),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "Try again",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(
                                        MediaQuery.of(context).size.width *
                                            .009),
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          minimumSize: MaterialStatePropertyAll(
                                              Size(
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .4,
                                                  MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      .12)),
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                            Color.fromARGB(255, 112, 112, 212),
                                          ),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "Go to home",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        )),
                                  ),
                                ]))
                      ]),
                    )),
                  ],
                ))));
  }
}
