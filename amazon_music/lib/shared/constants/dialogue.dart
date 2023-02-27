import 'package:flutter/material.dart';

import '../widgets/ChangeTheme.dart';

class Constants {
  static const String FirstItem = 'Connect to a Device';
  static const String SecondItem = 'Music Settings';
  static const String ThirdItem = 'My Profile';
  static const String FourthItem = 'Help & Feedback';
  static const String FifthItem = 'Car Mode';
  static const IconData FirstIcon = Icons.cast;
  static const IconData SecondIcon = Icons.settings;
  static const IconData ThirdIcon = Icons.person;
  static const IconData FourthIcon = Icons.question_mark_outlined;
  static const IconData FifthIcon = Icons.car_repair;

  static const List<String> choices = <String>[
    FirstItem,
    SecondItem,
    ThirdItem,
    FourthItem,
    FifthItem
  ];
  static const List<IconData> iconChoice = <IconData>[
    FirstIcon,
    SecondIcon,
    ThirdIcon,
    FourthIcon,
    FifthIcon
  ];

  static List<Widget> choice = [
    Row(
      children: const [
        Icon(
          Icons.cast,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Connect to a device",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    Row(
      children: const [
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Music Settings",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    Row(
      children: const [
        Icon(
          Icons.person,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "My Profile",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    Row(
      children: const [
        Icon(
          Icons.help,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Help & Feedback",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    Row(
      children: const [
        Icon(
          Icons.car_repair,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Car Mode",
          style: TextStyle(color: Colors.white),
        ),
      ],
    ),
    Row(
      children: const [
        Icon(
          Icons.color_lens_outlined,
          color: Colors.white,
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "Switch App Theme",
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(
          width: 10,
        ),
        ChangeThemeButton(),
      ],
    ),
  ];
}
