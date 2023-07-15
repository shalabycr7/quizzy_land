import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quizzy_land/global/questions_index_listener.dart';
import 'package:quizzy_land/screens/category_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => MyModel(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const CategoryScreen(),
    );
  }
}
