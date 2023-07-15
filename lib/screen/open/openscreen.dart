// ignore_for_file: unused_import
import 'package:alert_dialog/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Openscreen extends StatelessWidget {
  Openscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromRGBO(246, 241, 248, 1),
        child: Stack(
          children: [
            Positioned(
              bottom: MediaQuery.of(context).size.height * .6,
              right: MediaQuery.of(context).size.width * .6,
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .5,
                child: Center(
                  child: Image.asset('images/math.png'),
                ),
              ),
            ),
            Center(
              child: Column(
                children: [
                  SizedBox(height: MediaQuery.of(context).size.height * .13),
                  Container(
                    width: MediaQuery.of(context).size.width * .5,
                    height: MediaQuery.of(context).size.height * .5,
                    child: Center(
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                  SizedBox(
                    height: 75,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18),
                        ),
                        primary: Color.fromARGB(255, 86, 86, 194),
                        minimumSize: Size(
                            MediaQuery.of(context).size.width * .6,
                            MediaQuery.of(context).size.height * .05),
                        textStyle: TextStyle(fontSize: 16.0),
                      ),
                      onPressed: () {},
                      child: Text(
                        "Start",
                        style: GoogleFonts.quicksand(),
                        // Color.fromARGB(255, 86, 86, 194),
                      )),
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height * .6,
              left: MediaQuery.of(context).size.width * .6,
              child: Container(
                width: MediaQuery.of(context).size.width * .5,
                height: MediaQuery.of(context).size.height * .5,
                child: Center(
                  child: Image.asset('images/cimc.png'),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .435,
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: Image.asset(
                    'images/hist.png',
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
