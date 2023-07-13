import 'package:flutter/material.dart';

import '../Shared/Card_Category.dart';
import '../gradient_decoration.dart';

class Category_Screen extends StatelessWidget {
  const Category_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(decoration: blueGradient),
        Positioned(
          left: 10,
          right: 10,
          bottom: 15,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.8,
            // color: Colors.amber,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 10.0,
                  blurRadius: 10.0,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: Column(
              children: [
                CardCategory(),
                CardCategory(),
                CardCategory(),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
