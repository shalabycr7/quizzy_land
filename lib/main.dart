import 'package:flutter/material.dart';
import 'package:flutter_application_33/screen/open/openscreen.dart';
// ignore: unused_import
import 'package:flutter_application_33/screen/reviewscreen.dart';

void main() {
  runApp(const myapp());
}

// ignore: depend_on_referenced_packages

class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Openscreen(),
    );
  }
}
