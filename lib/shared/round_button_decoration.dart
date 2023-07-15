import 'package:flutter/material.dart';

ButtonStyle roundButtonDecor(desiredColor) {
  return (ElevatedButton.styleFrom(
    backgroundColor: desiredColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ));
}
