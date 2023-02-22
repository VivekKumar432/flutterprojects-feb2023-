import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:udemy_clone/screens/coursePage.dart';
// import 'package:udemy_clone/screens/preHomepages/pageOne.dart';
// import 'package:udemy_clone/screens/preHomepages/pageThree.dart';
// import 'package:udemy_clone/screens/preHomepages/pageTwo.dart';

class PrePageView extends StatefulWidget {
  const PrePageView({Key? key}) : super(key: key);

  @override
  State<PrePageView> createState() => _UserPageViewState();
}

class _UserPageViewState extends State<PrePageView> {
  bool browseLoad = false;

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, "/second"));
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 30, 29, 29),
          child: Padding(
            padding: const EdgeInsets.all(80.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset("assets/musiclogo.png")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
