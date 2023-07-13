import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class CardCategory extends StatelessWidget {
  const CardCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Card(
          color: const Color.fromRGBO(246, 241, 248, 1),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          elevation: 8.0,
         child: Row(children: [
          Image.asset("name")
         ]),
            
            ),
          
        ),
      
    );
  }
}
