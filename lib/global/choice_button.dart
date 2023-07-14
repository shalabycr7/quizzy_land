import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quizzy_land/global/global_data.dart';
import 'package:quizzy_land/global/questions_index_listener.dart';
import 'package:quizzy_land/screens/score_screen.dart';

int ll = 0;

class ChoiceButton extends StatefulWidget {
  final String title;

  ChoiceButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  _ChoiceButtonState createState() => _ChoiceButtonState();
}

class _ChoiceButtonState extends State<ChoiceButton> {
  bool isPressed = false;

  void _handlePress() {
    setState(() {
      if (ll == biologyTest.length - 1) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ScoreScreen()),
        );
      } else {
        ll++;
        Provider.of<MyModel>(context, listen: false).setVariableValue();
        isPressed = true;
        Timer(Duration(milliseconds: 200), () {
          setState(() {
            isPressed = false;
          });
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final color =
        isPressed ? const Color.fromARGB(255, 120, 30, 255) : Colors.white;
    final textColor = isPressed ? Colors.white : Colors.black;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: _handlePress,
        style: ElevatedButton.styleFrom(
          foregroundColor: textColor,
          backgroundColor: color,
          elevation: 0.0,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: const BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.quicksand(
                fontSize: 14,
              ),
            ),
            const Icon(Icons.arrow_forward, size: 16.0),
          ],
        ),
      ),
    );
  }
}
