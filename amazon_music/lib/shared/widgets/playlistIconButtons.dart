import 'package:flutter/material.dart';

class PlaylistIconButtons extends StatelessWidget {
  IconData iconName;
  PlaylistIconButtons(this.iconName, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10),
        // backgroundColor: , // <-- Button color
        // foregroundColor: Colors.black, // <-- Splash color
      ),
      child: Icon(
        iconName,
        color: Colors.white,
        size: 30,
      ),
    );
  }
}
