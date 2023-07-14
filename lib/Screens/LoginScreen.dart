import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/Screens/Category_Screen.dart';

import '../gradient_decoration.dart';

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
            decoration: const BoxDecoration(
                /*image: DecorationImage(
                image: AssetImage("assets/images/9.jpeg"),
                fit: BoxFit.cover,
              ),*/
                ),
          ),
        ),
        Positioned(
          //  right: screenSize.width * (0.01),
          //  top: screenSize.height * (0.001),
          child: Image.asset(
            "lib/assest/images/logo1.png",
            width: 400,
            height: 400,
          ),
        ),
        /*Positioned(
          top: 30.0,
          left: 24,
          child: Text(
            'Quiz',
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                fontSize: 35.0,
                color: Color.fromRGBO(126, 87, 194, 1),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),*/
        Positioned(
          left: screenSize.width * 0.17,
          right: 0,
          top: screenSize.height * 0.45,
          child: Text(
            "Want To Start?",
            style: GoogleFonts.racingSansOne(
              fontSize: 30.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 3.0,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 15,
          child: Container(
            width: screenSize.width,
            height: screenSize.height * 0.4,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(238, 238, 238, 1),
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
                        style: GoogleFonts.racingSansOne(
                          textStyle: TextStyle(
                            fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 67, 72, 169),
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
                            // Validate the username before navigating to another page
                            //    String username = _usernameController.text;

                            // Navigate to another page with the username
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Category_Screen(),
                              ),
                            );
                          } else {
                            // Display an error message to the user
                            print('Invalid username');
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
                          primary: Color.fromARGB(255, 67, 72, 169),
                          //Color.fromARGB(255, 103, 101, 80),
                          // // background color
                          onPrimary: Colors.white,
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
