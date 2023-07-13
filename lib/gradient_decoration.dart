import 'package:flutter/material.dart';

BoxDecoration blueGradient = const BoxDecoration(
  gradient: LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color.fromARGB(255, 112, 112, 212),
      Color.fromARGB(255, 67, 72, 169),
    ],
  ),
);
