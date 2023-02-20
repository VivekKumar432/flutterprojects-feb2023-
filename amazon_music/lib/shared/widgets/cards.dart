import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  List<Color> colorList;
  String cardMessage;
  MyCard({super.key, required this.colorList, required this.cardMessage});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: colorList,
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: AutoSizeText(
              cardMessage,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ), //declare your widget here
      ),
    );
  }
}
