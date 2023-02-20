import 'package:flutter/material.dart';

class MyChip extends StatelessWidget {
  IconData iconName = Icons.podcasts;
  String text;
  MyChip({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Chip(
      padding: const EdgeInsets.all(12),
      avatar: Icon(
        iconName,
        color: Colors.white,
      ),
      label: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 39, 38, 38),
    );
  }
}
