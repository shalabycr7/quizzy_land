import 'package:flutter/material.dart';
import 'package:quizzy_land/screens/open_screen.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

// newwwwwwwwwwwww
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Openscreen(),
    );
  }
}
