import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quizzy_land/global/global_data.dart';
import 'package:quizzy_land/global/questions_index_listener.dart';
import 'package:quizzy_land/screens/reviews_screen.dart';

int questionIndex = 0;

class ChoiceButton extends StatefulWidget {
  final String title;

  const ChoiceButton({
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
      if (questionIndex == biologyTest.length - 1) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const ReviewScreen()),
        );
      } else {
        questionIndex++;
        Provider.of<MyModel>(context, listen: false).setVariableValue();
      }
    });
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

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: _handlePress,
        style: ButtonStyle(
            elevation: MaterialStateProperty.all(0),
            padding: MaterialStateProperty.all(
                const EdgeInsets.symmetric(vertical: 25, horizontal: 15)),
            backgroundColor:
                getColor(Colors.white, const Color.fromARGB(255, 120, 30, 255)),
            foregroundColor: getColor(Colors.black, Colors.white),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: const BorderSide(color: Colors.grey, width: 0.5),
            ))),
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
