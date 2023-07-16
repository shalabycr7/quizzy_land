// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizzy_land/screens/login_screen.dart';

class Openscreen extends StatelessWidget {
  const Openscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromRGBO(246, 241, 248, 1),
        child: Stack(
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.height * .6,
              right: MediaQuery.of(context).size.width * .6,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .5,
                child: Center(
                  child: Image.asset('assets/images/math.png'),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * .13),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    height: MediaQuery.of(context).size.height * .5,
                    child: Center(
                      child: Image.asset('assets/images/logo_purple.png'),
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        backgroundColor: Color.fromARGB(255, 67, 72, 169),
                        minimumSize: Size(
                            MediaQuery.of(context).size.width * .7,
                            MediaQuery.of(context).size.height * .06),
                        textStyle: const TextStyle(fontSize: 16.0),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LoginScreen(),
                          ),
                        );
                      },
                      child: Text(
                        "Start",
                        style: GoogleFonts.quicksand(
                          fontSize: 20,
                        ),
                        // Color.fromARGB(255, 86, 86, 194),
                      )),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .6,
              left: MediaQuery.of(context).size.width * .6,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .5,
                child: Center(
                  child: Image.asset('assets/images/cimc.png'),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .435,
              right: 0,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Image.asset(
                    'assets/images/hist.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
