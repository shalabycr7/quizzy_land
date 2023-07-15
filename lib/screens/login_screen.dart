import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/global/gradient_decoration.dart';
import 'package:quizzy_land/screens/quiz_screen.dart';

final _formKey = GlobalKey<FormState>();

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: blueGradient,
        ),
        SizedBox(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
          ),
        ),
        Positioned(
          child: Image.asset(
            "assets/images/logo1.png",
            width: 400,
            height: 400,
          ),
        ),
        Positioned(
          left: screenSize.width * 0.17,
          right: 0,
          top: screenSize.height * 0.45,
          child: Text(
            "Want To Start?",
            style: GoogleFonts.quicksand(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Container(
            width: screenSize.width,
            height: screenSize.height * 0.4,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 245, 240, 252),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      Text(
                        'Login',
                        style: GoogleFonts.quicksand(
                          textStyle: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 120, 30, 255),
                            letterSpacing: 3.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 16.0,
                            horizontal: 20.0,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: BorderSide.none,
                          ),
                          hintText: 'Username',
                          prefixIcon: const Icon(Icons.person),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter your username';
                          } else if (value.length < 9) {
                            return 'Username must be at least 9 characters long';
                          } else if (!RegExp(r'^[A-Z][a-zA-Z0-9]*$')
                              .hasMatch(value)) {
                            return 'Username must start with an uppercase letter and contain only letters and numbers';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuizScreen(),
                              ),
                            );
                          }
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.quicksand(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Color.fromARGB(255, 120, 30, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          fixedSize: const Size(200.0, 50.0),
                        ),
                      ),
                      SizedBox(
                        height: screenSize.height * 0.03,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
