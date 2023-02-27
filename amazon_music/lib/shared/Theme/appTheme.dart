import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  bool get isDarkMode => themeMode == ThemeMode.dark;
  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class AppTheme {
  static final darkTheme = ThemeData(
      //shadowColor: Colors.grey,
      iconTheme: const IconThemeData(color: Colors.white),
      scaffoldBackgroundColor: const Color.fromARGB(255, 20, 25, 25),
      primaryColor: Colors.black,
      colorScheme: const ColorScheme.dark());
  static final lightTheme = ThemeData(
      iconTheme: const IconThemeData(color: Colors.black),
      scaffoldBackgroundColor: Colors.white,
      primaryColor: Colors.white,
      colorScheme: const ColorScheme.light());
}
