import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChoiceButton extends StatefulWidget {
  String title;
  ChoiceButton({Key? key, required this.title}) : super(key: key);

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<ChoiceButton> {
  bool _isPressed = false;

  void _handlePress() {
    setState(() {
      _isPressed = !_isPressed; // toggle _isPressed value
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = _isPressed ? Color.fromARGB(255, 120, 30, 255) : Colors.white;
    final textColor = _isPressed ? Colors.white : Colors.black;

    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        onPressed: _handlePress,
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          foregroundColor: textColor,
          backgroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 25),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.grey, width: 0.5),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title,
              style: GoogleFonts.quicksand(
                textStyle: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
            Icon(Icons.arrow_forward, size: 16.0),
          ],
        ),
      ),
    );
  }
}
