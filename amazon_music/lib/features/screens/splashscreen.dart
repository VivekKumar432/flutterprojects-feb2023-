import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _UserSplashState();
}

class _UserSplashState extends State<MySplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 2),
        () => Navigator.pushReplacementNamed(context, "/first"));

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          color: const Color.fromARGB(255, 20, 25, 25),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Image.asset("assets/amazon_music_logo_GIF.png")),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 35,
                  child: const LoadingIndicator(
                      indicatorType: Indicator.circleStrokeSpin,
                      colors: [Colors.grey],
                      strokeWidth: 2,
                      pathBackgroundColor: Colors.black12),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
