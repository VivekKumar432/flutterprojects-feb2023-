import 'package:amazon_music/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: getRoutes(),
    initialRoute: "/",
    // home: MySplashScreen(),
  ));
}
